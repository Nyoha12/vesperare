[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [Parameter(Mandatory = $true)]
    [string] $OutputPath,

    [ValidateSet("ping", "load_patch", "request_state", "set_mode", "request_log_flush", "stop_harness")]
    [string] $Type = "ping",

    [ValidateSet("harness", "patch", "module")]
    [string] $Target = "harness",

    [ValidateSet("absent", "off", "bypass", "reduit", "active")]
    [string] $Mode = "active",

    [ValidateSet("codex_cli")]
    [string] $IssuedBy = "codex_cli",

    [string] $CommandId,

    [string] $RunId,

    [string] $CreatedAt,

    [string] $PayloadJson = "{}",

    [string] $Notes,

    [switch] $Force
)

Set-StrictMode -Version 2.0
$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($CommandId)) {
    $CommandId = "cmd-" + [guid]::NewGuid().ToString("N")
}

if ([string]::IsNullOrWhiteSpace($RunId)) {
    $RunId = "run-" + [guid]::NewGuid().ToString("N")
}

if ([string]::IsNullOrWhiteSpace($CreatedAt)) {
    $CreatedAt = [DateTimeOffset]::UtcNow.ToString("yyyy-MM-ddTHH:mm:ss'Z'")
}

try {
    $parsedPayload = $PayloadJson | ConvertFrom-Json
}
catch {
    throw "PayloadJson must be a valid JSON object. $($_.Exception.Message)"
}

if ($null -eq $parsedPayload) {
    $parsedPayload = [pscustomobject]@{}
}

if ($parsedPayload -is [array] -or $parsedPayload.GetType().Name -notin @("PSCustomObject", "OrderedDictionary", "Hashtable")) {
    throw "PayloadJson must describe a JSON object."
}

$command = [ordered]@{
    schema = "vesperare.max_harness.command.v0"
    command_id = $CommandId
    run_id = $RunId
    issued_by = $IssuedBy
    created_at = $CreatedAt
    type = $Type
    target = $Target
    mode = $Mode
    payload = $parsedPayload
    expect_ack = $true
}

if (-not [string]::IsNullOrWhiteSpace($Notes)) {
    $command["notes"] = $Notes
}

$resolvedOutputPath = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($OutputPath)
$parentPath = Split-Path -Parent $resolvedOutputPath

if (-not [string]::IsNullOrWhiteSpace($parentPath) -and -not (Test-Path -LiteralPath $parentPath)) {
    New-Item -ItemType Directory -Path $parentPath -Force | Out-Null
}

if ((Test-Path -LiteralPath $resolvedOutputPath) -and -not $Force) {
    throw "OutputPath already exists. Use -Force to overwrite: $resolvedOutputPath"
}

$json = $command | ConvertTo-Json -Depth 32

if ($PSCmdlet.ShouldProcess($resolvedOutputPath, "write harness command JSON")) {
    Set-Content -LiteralPath $resolvedOutputPath -Value $json -Encoding UTF8
    Write-Output $resolvedOutputPath
}
