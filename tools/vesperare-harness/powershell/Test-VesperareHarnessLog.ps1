[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string] $LogPath,

    [switch] $Quiet
)

Set-StrictMode -Version 2.0
$ErrorActionPreference = "Stop"

$resolvedLogPath = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($LogPath)

if (-not (Test-Path -LiteralPath $resolvedLogPath)) {
    throw "Log file not found: $resolvedLogPath"
}

$requiredProperties = @(
    "schema",
    "event_id",
    "run_id",
    "command_id",
    "timestamp",
    "level",
    "source",
    "event",
    "status",
    "mode",
    "message",
    "data"
)

$allowedValues = @{
    level = @("info", "warning", "error")
    source = @("harness", "patch", "module")
    event = @(
        "boot",
        "command_received",
        "command_ack",
        "command_error",
        "state_snapshot",
        "fallback_enter",
        "fallback_exit",
        "sig_emit",
        "mode_change",
        "patch_load_attempt",
        "patch_load_result",
        "log_flush",
        "shutdown"
    )
    status = @("ok", "blocked", "degraded", "failed", "unknown")
    mode = @("absent", "off", "bypass", "reduit", "active")
}

$lineNumber = 0
$eventCount = 0

foreach ($line in Get-Content -LiteralPath $resolvedLogPath) {
    $lineNumber += 1

    if ([string]::IsNullOrWhiteSpace($line)) {
        throw "Line $lineNumber is empty. JSONL requires one JSON object per line."
    }

    try {
        $eventObject = $line | ConvertFrom-Json
    }
    catch {
        throw "Line $lineNumber is not valid JSON. $($_.Exception.Message)"
    }

    $propertyNames = @($eventObject.PSObject.Properties.Name)

    foreach ($propertyName in $requiredProperties) {
        if ($propertyNames -notcontains $propertyName) {
            throw "Line $lineNumber is missing required property '$propertyName'."
        }
    }

    foreach ($propertyName in $propertyNames) {
        if ($requiredProperties -notcontains $propertyName) {
            throw "Line $lineNumber has unsupported property '$propertyName'."
        }
    }

    if ($eventObject.schema -ne "vesperare.max_harness.log.v0") {
        throw "Line $lineNumber has unsupported schema '$($eventObject.schema)'."
    }

    foreach ($key in $allowedValues.Keys) {
        if ($allowedValues[$key] -notcontains $eventObject.$key) {
            throw "Line $lineNumber has unsupported $key '$($eventObject.$key)'."
        }
    }

    foreach ($stringProperty in @("event_id", "run_id", "timestamp", "message")) {
        if ([string]::IsNullOrWhiteSpace([string] $eventObject.$stringProperty)) {
            throw "Line $lineNumber has empty string property '$stringProperty'."
        }
    }

    if ($null -ne $eventObject.command_id -and [string]::IsNullOrWhiteSpace([string] $eventObject.command_id)) {
        throw "Line $lineNumber has an empty command_id."
    }

    try {
        [DateTimeOffset]::Parse([string] $eventObject.timestamp) | Out-Null
    }
    catch {
        throw "Line $lineNumber has an invalid timestamp '$($eventObject.timestamp)'."
    }

    if ($null -eq $eventObject.data -or $eventObject.data -is [array] -or $eventObject.data.GetType().Name -notin @("PSCustomObject", "OrderedDictionary", "Hashtable")) {
        throw "Line $lineNumber data must be a JSON object."
    }

    $eventCount += 1
}

if ($eventCount -eq 0) {
    throw "Log file contains no events: $resolvedLogPath"
}

if (-not $Quiet) {
    Write-Output "OK: $eventCount log event(s) parsed from $resolvedLogPath"
}
