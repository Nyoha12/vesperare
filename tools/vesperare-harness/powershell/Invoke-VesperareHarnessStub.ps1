[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string] $CommandPath,

    [Parameter(Mandatory = $true)]
    [string] $OutputDirectory,

    [switch] $Force,

    [switch] $Quiet
)

Set-StrictMode -Version 2.0
$ErrorActionPreference = "Stop"

$commandValidatorPath = Join-Path $PSScriptRoot "Test-VesperareHarnessCommand.ps1"
& $commandValidatorPath -CommandPath $CommandPath -Quiet

$resolvedCommandPath = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($CommandPath)
$resolvedOutputDirectory = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($OutputDirectory)

if ((Test-Path -LiteralPath $resolvedOutputDirectory) -and -not (Get-Item -LiteralPath $resolvedOutputDirectory).PSIsContainer) {
    throw "OutputDirectory exists but is not a directory: $resolvedOutputDirectory"
}

if (-not (Test-Path -LiteralPath $resolvedOutputDirectory)) {
    New-Item -ItemType Directory -Path $resolvedOutputDirectory -Force | Out-Null
}

$commandObject = Get-Content -LiteralPath $resolvedCommandPath -Raw | ConvertFrom-Json
$acceptedCommandTypes = @("ping", "request_state")
$accepted = $acceptedCommandTypes -contains $commandObject.type

$ackPath = Join-Path $resolvedOutputDirectory "ack.json"
$errorPath = Join-Path $resolvedOutputDirectory "error.json"
$logPath = Join-Path $resolvedOutputDirectory "harness-session.jsonl"

$plannedOutputPaths = @($logPath)
if ($accepted) {
    $plannedOutputPaths += $ackPath
}
else {
    $plannedOutputPaths += $errorPath
}

foreach ($plannedOutputPath in $plannedOutputPaths) {
    if ((Test-Path -LiteralPath $plannedOutputPath) -and -not $Force) {
        throw "Output file already exists. Use -Force to overwrite: $plannedOutputPath"
    }
}

function New-HarnessUtcTimestamp {
    return [DateTimeOffset]::UtcNow.ToString("yyyy-MM-ddTHH:mm:ss.fff'Z'")
}

function New-HarnessLogEvent {
    param(
        [AllowNull()]
        [object] $CommandId,

        [Parameter(Mandatory = $true)]
        [ValidateSet("info", "warning", "error")]
        [string] $Level,

        [Parameter(Mandatory = $true)]
        [ValidateSet("boot", "command_received", "command_ack", "command_error", "log_flush", "shutdown")]
        [string] $Event,

        [Parameter(Mandatory = $true)]
        [ValidateSet("ok", "blocked", "failed")]
        [string] $Status,

        [Parameter(Mandatory = $true)]
        [string] $Message,

        [Parameter(Mandatory = $true)]
        [object] $Data
    )

    return [ordered]@{
        schema = "vesperare.max_harness.log.v0"
        event_id = "evt-" + [guid]::NewGuid().ToString("N")
        run_id = $commandObject.run_id
        command_id = $CommandId
        timestamp = New-HarnessUtcTimestamp
        level = $Level
        source = "harness"
        event = $Event
        status = $Status
        mode = $commandObject.mode
        message = $Message
        data = $Data
    }
}

$events = New-Object System.Collections.Generic.List[object]

$events.Add((New-HarnessLogEvent -CommandId $null -Level "info" -Event "boot" -Status "ok" -Message "Local file-only harness stub started without Max or Ableton." -Data ([ordered]@{
    max_launched = $false
    ableton_launched = $false
    patch_modified = $false
})))

$events.Add((New-HarnessLogEvent -CommandId $commandObject.command_id -Level "info" -Event "command_received" -Status "ok" -Message "Command JSON accepted by local parser." -Data ([ordered]@{
    command_type = $commandObject.type
    target = $commandObject.target
    command_path = $resolvedCommandPath
})))

if ($accepted) {
    $ackObject = [ordered]@{
        schema = "vesperare.max_harness.ack.v0"
        command_id = $commandObject.command_id
        run_id = $commandObject.run_id
        status = "ack"
        accepted = $true
        message = "Command accepted by local file-only harness stub v0."
    }

    $ackJson = $ackObject | ConvertTo-Json -Depth 32
    Set-Content -LiteralPath $ackPath -Value $ackJson -Encoding UTF8

    $events.Add((New-HarnessLogEvent -CommandId $commandObject.command_id -Level "info" -Event "command_ack" -Status "ok" -Message "Command accepted by local stub." -Data ([ordered]@{
        accepted = $true
        ack_path = $ackPath
        supported_commands = $acceptedCommandTypes
    })))
}
else {
    $errorObject = [ordered]@{
        schema = "vesperare.max_harness.error.v0"
        command_id = $commandObject.command_id
        run_id = $commandObject.run_id
        status = "error"
        error_code = "unknown_command"
        recoverable = $true
        message = "Command type '$($commandObject.type)' is not accepted by local file-only harness stub v0."
    }

    $errorJson = $errorObject | ConvertTo-Json -Depth 32
    Set-Content -LiteralPath $errorPath -Value $errorJson -Encoding UTF8

    $events.Add((New-HarnessLogEvent -CommandId $commandObject.command_id -Level "error" -Event "command_error" -Status "blocked" -Message "Command refused by local stub." -Data ([ordered]@{
        accepted = $false
        error_path = $errorPath
        error_code = "unknown_command"
        supported_commands = $acceptedCommandTypes
    })))
}

$events.Add((New-HarnessLogEvent -CommandId $commandObject.command_id -Level "info" -Event "log_flush" -Status "ok" -Message "Local stub log is ready to flush to JSONL." -Data ([ordered]@{
    log_path = $logPath
})))

$events.Add((New-HarnessLogEvent -CommandId $null -Level "info" -Event "shutdown" -Status "ok" -Message "Local file-only harness stub stopped." -Data ([ordered]@{
    max_launched = $false
    ableton_launched = $false
    patch_modified = $false
})))

$logLines = foreach ($eventObject in $events) {
    $eventObject | ConvertTo-Json -Depth 32 -Compress
}

Set-Content -LiteralPath $logPath -Value $logLines -Encoding UTF8

if (-not $Quiet) {
    [pscustomobject]@{
        Accepted = $accepted
        CommandPath = $resolvedCommandPath
        OutputDirectory = $resolvedOutputDirectory
        AckPath = if ($accepted) { $ackPath } else { $null }
        ErrorPath = if ($accepted) { $null } else { $errorPath }
        LogPath = $logPath
    }
}
