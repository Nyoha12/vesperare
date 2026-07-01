[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string] $CommandPath,

    [switch] $Quiet
)

Set-StrictMode -Version 2.0
$ErrorActionPreference = "Stop"

$resolvedCommandPath = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($CommandPath)

if (-not (Test-Path -LiteralPath $resolvedCommandPath)) {
    throw "Command file not found: $resolvedCommandPath"
}

try {
    $commandObject = Get-Content -LiteralPath $resolvedCommandPath -Raw | ConvertFrom-Json
}
catch {
    throw "Command file is not valid JSON. $($_.Exception.Message)"
}

if ($null -eq $commandObject -or $commandObject -is [array] -or $commandObject.GetType().Name -notin @("PSCustomObject", "OrderedDictionary", "Hashtable")) {
    throw "Command file must contain one JSON object."
}

$requiredProperties = @(
    "schema",
    "command_id",
    "run_id",
    "issued_by",
    "created_at",
    "type",
    "target",
    "mode",
    "payload",
    "expect_ack"
)

$optionalProperties = @(
    "notes"
)

$allowedProperties = $requiredProperties + $optionalProperties

$allowedValues = @{
    issued_by = @("codex_cli")
    type = @("ping", "load_patch", "request_state", "set_mode", "request_log_flush", "stop_harness")
    target = @("harness", "patch", "module")
    mode = @("absent", "off", "bypass", "reduit", "active")
}

$propertyNames = @($commandObject.PSObject.Properties.Name)

foreach ($propertyName in $requiredProperties) {
    if ($propertyNames -notcontains $propertyName) {
        throw "Command file is missing required property '$propertyName'."
    }
}

foreach ($propertyName in $propertyNames) {
    if ($allowedProperties -notcontains $propertyName) {
        throw "Command file has unsupported property '$propertyName'."
    }
}

if ($commandObject.schema -ne "vesperare.max_harness.command.v0") {
    throw "Command file has unsupported schema '$($commandObject.schema)'."
}

foreach ($key in $allowedValues.Keys) {
    if ($allowedValues[$key] -notcontains $commandObject.$key) {
        throw "Command file has unsupported $key '$($commandObject.$key)'."
    }
}

foreach ($stringProperty in @("command_id", "run_id", "issued_by", "created_at", "type", "target", "mode")) {
    if ([string]::IsNullOrWhiteSpace([string] $commandObject.$stringProperty)) {
        throw "Command file has empty string property '$stringProperty'."
    }
}

if ($propertyNames -contains "notes" -and [string]::IsNullOrWhiteSpace([string] $commandObject.notes)) {
    throw "Command file has empty optional property 'notes'."
}

try {
    [DateTimeOffset]::Parse([string] $commandObject.created_at) | Out-Null
}
catch {
    throw "Command file has an invalid created_at timestamp '$($commandObject.created_at)'."
}

if ($commandObject.expect_ack -isnot [bool]) {
    throw "Command file property 'expect_ack' must be a boolean."
}

if ($null -eq $commandObject.payload -or $commandObject.payload -is [array] -or $commandObject.payload.GetType().Name -notin @("PSCustomObject", "OrderedDictionary", "Hashtable")) {
    throw "Command file payload must be a JSON object."
}

if (-not $Quiet) {
    Write-Output "OK: command JSON parsed from $resolvedCommandPath"
}
