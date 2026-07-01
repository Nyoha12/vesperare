[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string] $StatePath,

    [switch] $Quiet
)

Set-StrictMode -Version 2.0
$ErrorActionPreference = "Stop"

$resolvedStatePath = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($StatePath)

if (-not (Test-Path -LiteralPath $resolvedStatePath)) {
    throw "State file not found: $resolvedStatePath"
}

try {
    $stateObject = Get-Content -LiteralPath $resolvedStatePath -Raw | ConvertFrom-Json
}
catch {
    throw "State file is not valid JSON. $($_.Exception.Message)"
}

if ($null -eq $stateObject -or $stateObject -is [array] -or $stateObject.GetType().Name -notin @("PSCustomObject", "OrderedDictionary", "Hashtable")) {
    throw "State file must contain one JSON object."
}

$requiredProperties = @(
    "schema",
    "run_id",
    "updated_at",
    "source",
    "status",
    "mode",
    "last_command_id",
    "last_event",
    "capabilities",
    "errors",
    "message"
)

$allowedValues = @{
    source = @("harness", "patch", "module")
    status = @("ok", "blocked", "degraded", "failed", "unknown")
    mode = @("absent", "off", "bypass", "reduit", "active")
    last_event = @(
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
}

$propertyNames = @($stateObject.PSObject.Properties.Name)

foreach ($propertyName in $requiredProperties) {
    if ($propertyNames -notcontains $propertyName) {
        throw "State file is missing required property '$propertyName'."
    }
}

foreach ($propertyName in $propertyNames) {
    if ($requiredProperties -notcontains $propertyName) {
        throw "State file has unsupported property '$propertyName'."
    }
}

if ($stateObject.schema -ne "vesperare.max_harness.state.v0") {
    throw "State file has unsupported schema '$($stateObject.schema)'."
}

foreach ($key in $allowedValues.Keys) {
    if ($allowedValues[$key] -notcontains $stateObject.$key) {
        throw "State file has unsupported $key '$($stateObject.$key)'."
    }
}

foreach ($stringProperty in @("run_id", "updated_at", "source", "status", "mode", "last_event", "message")) {
    if ([string]::IsNullOrWhiteSpace([string] $stateObject.$stringProperty)) {
        throw "State file has empty string property '$stringProperty'."
    }
}

if ($null -ne $stateObject.last_command_id -and [string]::IsNullOrWhiteSpace([string] $stateObject.last_command_id)) {
    throw "State file has an empty last_command_id."
}

try {
    [DateTimeOffset]::Parse([string] $stateObject.updated_at) | Out-Null
}
catch {
    throw "State file has an invalid updated_at timestamp '$($stateObject.updated_at)'."
}

foreach ($arrayProperty in @("capabilities", "errors")) {
    if ($stateObject.$arrayProperty -isnot [array]) {
        throw "State file property '$arrayProperty' must be an array."
    }

    foreach ($item in @($stateObject.$arrayProperty)) {
        if ($item -isnot [string] -or [string]::IsNullOrWhiteSpace($item)) {
            throw "State file property '$arrayProperty' must contain only non-empty strings."
        }
    }
}

if (-not $Quiet) {
    Write-Output "OK: state JSON parsed from $resolvedStatePath"
}
