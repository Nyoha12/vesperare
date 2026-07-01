[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string] $ErrorPath,

    [switch] $Quiet
)

Set-StrictMode -Version 2.0
$ErrorActionPreference = "Stop"

$resolvedErrorPath = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($ErrorPath)

if (-not (Test-Path -LiteralPath $resolvedErrorPath)) {
    throw "Error file not found: $resolvedErrorPath"
}

try {
    $errorObject = Get-Content -LiteralPath $resolvedErrorPath -Raw | ConvertFrom-Json
}
catch {
    throw "Error file is not valid JSON. $($_.Exception.Message)"
}

if ($null -eq $errorObject -or $errorObject -is [array] -or $errorObject.GetType().Name -notin @("PSCustomObject", "OrderedDictionary", "Hashtable")) {
    throw "Error file must contain one JSON object."
}

$requiredProperties = @(
    "schema",
    "command_id",
    "run_id",
    "status",
    "error_code",
    "recoverable",
    "message"
)

$allowedErrorCodes = @(
    "unknown_command",
    "invalid_payload",
    "target_absent",
    "max_error",
    "blocked_by_policy"
)

$propertyNames = @($errorObject.PSObject.Properties.Name)

foreach ($propertyName in $requiredProperties) {
    if ($propertyNames -notcontains $propertyName) {
        throw "Error file is missing required property '$propertyName'."
    }
}

foreach ($propertyName in $propertyNames) {
    if ($requiredProperties -notcontains $propertyName) {
        throw "Error file has unsupported property '$propertyName'."
    }
}

if ($errorObject.schema -ne "vesperare.max_harness.error.v0") {
    throw "Error file has unsupported schema '$($errorObject.schema)'."
}

if ($errorObject.status -ne "error") {
    throw "Error file has unsupported status '$($errorObject.status)'."
}

if ($allowedErrorCodes -notcontains $errorObject.error_code) {
    throw "Error file has unsupported error_code '$($errorObject.error_code)'."
}

if ($errorObject.recoverable -isnot [bool]) {
    throw "Error file property 'recoverable' must be a boolean."
}

foreach ($stringProperty in @("command_id", "run_id", "status", "error_code", "message")) {
    if ([string]::IsNullOrWhiteSpace([string] $errorObject.$stringProperty)) {
        throw "Error file has empty string property '$stringProperty'."
    }
}

if (-not $Quiet) {
    Write-Output "OK: error JSON parsed from $resolvedErrorPath"
}
