[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string] $AckPath,

    [switch] $Quiet
)

Set-StrictMode -Version 2.0
$ErrorActionPreference = "Stop"

$resolvedAckPath = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($AckPath)

if (-not (Test-Path -LiteralPath $resolvedAckPath)) {
    throw "Ack file not found: $resolvedAckPath"
}

try {
    $ackObject = Get-Content -LiteralPath $resolvedAckPath -Raw | ConvertFrom-Json
}
catch {
    throw "Ack file is not valid JSON. $($_.Exception.Message)"
}

if ($null -eq $ackObject -or $ackObject -is [array] -or $ackObject.GetType().Name -notin @("PSCustomObject", "OrderedDictionary", "Hashtable")) {
    throw "Ack file must contain one JSON object."
}

$requiredProperties = @(
    "schema",
    "command_id",
    "run_id",
    "status",
    "accepted",
    "message"
)

$propertyNames = @($ackObject.PSObject.Properties.Name)

foreach ($propertyName in $requiredProperties) {
    if ($propertyNames -notcontains $propertyName) {
        throw "Ack file is missing required property '$propertyName'."
    }
}

foreach ($propertyName in $propertyNames) {
    if ($requiredProperties -notcontains $propertyName) {
        throw "Ack file has unsupported property '$propertyName'."
    }
}

if ($ackObject.schema -ne "vesperare.max_harness.ack.v0") {
    throw "Ack file has unsupported schema '$($ackObject.schema)'."
}

if ($ackObject.status -ne "ack") {
    throw "Ack file has unsupported status '$($ackObject.status)'."
}

if ($ackObject.accepted -isnot [bool] -or $ackObject.accepted -ne $true) {
    throw "Ack file property 'accepted' must be boolean true."
}

foreach ($stringProperty in @("command_id", "run_id", "status", "message")) {
    if ([string]::IsNullOrWhiteSpace([string] $ackObject.$stringProperty)) {
        throw "Ack file has empty string property '$stringProperty'."
    }
}

if (-not $Quiet) {
    Write-Output "OK: ack JSON parsed from $resolvedAckPath"
}
