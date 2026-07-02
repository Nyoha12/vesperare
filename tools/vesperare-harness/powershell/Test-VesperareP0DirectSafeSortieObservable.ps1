[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string] $ObservablePath,

    [switch] $Quiet
)

Set-StrictMode -Version 2.0
$ErrorActionPreference = "Stop"

function Assert-JsonObject {
    param(
        [Parameter(Mandatory = $true)]
        $Value,

        [Parameter(Mandatory = $true)]
        [string] $Name
    )

    if ($null -eq $Value -or $Value -is [array] -or $Value.GetType().Name -notin @("PSCustomObject", "OrderedDictionary", "Hashtable")) {
        throw "$Name must contain one JSON object."
    }
}

function Assert-Properties {
    param(
        [Parameter(Mandatory = $true)]
        $Object,

        [Parameter(Mandatory = $true)]
        [string[]] $Required,

        [Parameter(Mandatory = $true)]
        [string] $Name
    )

    $propertyNames = @($Object.PSObject.Properties.Name)

    foreach ($propertyName in $Required) {
        if ($propertyNames -notcontains $propertyName) {
            throw "$Name is missing required property '$propertyName'."
        }
    }

    foreach ($propertyName in $propertyNames) {
        if ($Required -notcontains $propertyName) {
            throw "$Name has unsupported property '$propertyName'."
        }
    }
}

function Assert-EnumValue {
    param(
        [Parameter(Mandatory = $true)]
        $Value,

        [Parameter(Mandatory = $true)]
        [string[]] $AllowedValues,

        [Parameter(Mandatory = $true)]
        [string] $Name
    )

    if ($AllowedValues -notcontains $Value) {
        throw "$Name has unsupported value '$Value'."
    }
}

function Assert-StringOrNull {
    param(
        [Parameter(Mandatory = $false)]
        $Value,

        [Parameter(Mandatory = $true)]
        [string] $Name
    )

    if ($null -ne $Value -and [string]::IsNullOrWhiteSpace([string] $Value)) {
        throw "$Name must be null or a non-empty string."
    }
}

function Assert-UniqueEnumArray {
    param(
        [Parameter(Mandatory = $true)]
        $Value,

        [Parameter(Mandatory = $true)]
        [string[]] $AllowedValues,

        [Parameter(Mandatory = $true)]
        [string] $Name,

        [string[]] $RequiredValues = @()
    )

    if ($Value -isnot [array] -or @($Value).Count -lt 1) {
        throw "$Name must be a non-empty array."
    }

    $seen = @{}

    foreach ($item in @($Value)) {
        if ($item -isnot [string] -or [string]::IsNullOrWhiteSpace($item)) {
            throw "$Name must contain only non-empty strings."
        }

        if ($AllowedValues -notcontains $item) {
            throw "$Name has unsupported value '$item'."
        }

        if ($seen.ContainsKey($item)) {
            throw "$Name contains duplicate value '$item'."
        }

        $seen[$item] = $true
    }

    foreach ($requiredValue in $RequiredValues) {
        if (-not $seen.ContainsKey($requiredValue)) {
            throw "$Name is missing required value '$requiredValue'."
        }
    }
}

function Assert-Responsibility {
    param(
        [Parameter(Mandatory = $true)]
        $Object,

        [Parameter(Mandatory = $true)]
        [string] $Name,

        [Parameter(Mandatory = $true)]
        [string[]] $AllowedStates,

        [Parameter(Mandatory = $true)]
        [string[]] $AllowedSig
    )

    Assert-JsonObject -Value $Object -Name $Name

    $requiredProperties = @(
        "status",
        "mode",
        "state",
        "fallback",
        "sig",
        "stop_condition"
    )

    Assert-Properties -Object $Object -Required $requiredProperties -Name $Name

    Assert-EnumValue -Value $Object.status -AllowedValues $script:AllowedStatus -Name "$Name.status"
    Assert-EnumValue -Value $Object.mode -AllowedValues $script:AllowedModes -Name "$Name.mode"
    Assert-EnumValue -Value $Object.state -AllowedValues $AllowedStates -Name "$Name.state"
    Assert-EnumValue -Value $Object.fallback -AllowedValues $script:AllowedFallback -Name "$Name.fallback"
    Assert-UniqueEnumArray -Value $Object.sig -AllowedValues $AllowedSig -Name "$Name.sig"
    Assert-StringOrNull -Value $Object.stop_condition -Name "$Name.stop_condition"
}

$resolvedObservablePath = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($ObservablePath)

if (-not (Test-Path -LiteralPath $resolvedObservablePath)) {
    throw "P0 direct/safe/sortie observable file not found: $resolvedObservablePath"
}

try {
    $observableObject = Get-Content -LiteralPath $resolvedObservablePath -Raw | ConvertFrom-Json
}
catch {
    throw "P0 direct/safe/sortie observable file is not valid JSON. $($_.Exception.Message)"
}

Assert-JsonObject -Value $observableObject -Name "P0 direct/safe/sortie observable file"

$rootProperties = @(
    "schema",
    "status",
    "mode",
    "updated_at",
    "source",
    "responsibilities",
    "proof"
)

$script:AllowedStatus = @("ok", "blocked", "degraded", "failed", "unknown")
$script:AllowedModes = @("absent", "off", "bypass", "reduit", "active")
$script:AllowedFallback = @("none", "required", "active", "failed", "unknown")

Assert-Properties -Object $observableObject -Required $rootProperties -Name "P0 direct/safe/sortie observable file"

if ($observableObject.schema -ne "vesperare.p0_direct_safe_sortie.observable.v0") {
    throw "P0 direct/safe/sortie observable file has unsupported schema '$($observableObject.schema)'."
}

Assert-EnumValue -Value $observableObject.status -AllowedValues $script:AllowedStatus -Name "status"
Assert-EnumValue -Value $observableObject.mode -AllowedValues $script:AllowedModes -Name "mode"
Assert-EnumValue -Value $observableObject.source -AllowedValues @("module") -Name "source"

try {
    [DateTimeOffset]::Parse([string] $observableObject.updated_at) | Out-Null
}
catch {
    throw "P0 direct/safe/sortie observable file has an invalid updated_at timestamp '$($observableObject.updated_at)'."
}

Assert-JsonObject -Value $observableObject.responsibilities -Name "responsibilities"
Assert-Properties -Object $observableObject.responsibilities -Required @("p0_direct", "p0_safe", "p0_sortie") -Name "responsibilities"

Assert-Responsibility `
    -Object $observableObject.responsibilities.p0_direct `
    -Name "responsibilities.p0_direct" `
    -AllowedStates @("active", "menace", "preserved_by_reduction", "absent", "unknown") `
    -AllowedSig @("direct_active", "direct_menace", "direct_preserved_by_reduction", "direct_absent")

Assert-Responsibility `
    -Object $observableObject.responsibilities.p0_safe `
    -Name "responsibilities.p0_safe" `
    -AllowedStates @("available", "active", "unavailable", "reduced", "unknown") `
    -AllowedSig @("safe_available", "safe_active", "safe_unavailable", "fallback_active")

Assert-Responsibility `
    -Object $observableObject.responsibilities.p0_sortie `
    -Name "responsibilities.p0_sortie" `
    -AllowedStates @("available", "promoted", "missing", "reduced", "unknown") `
    -AllowedSig @("sortie_available", "sortie_promoted", "sortie_missing", "sortie_reduced")

Assert-JsonObject -Value $observableObject.proof -Name "proof"
Assert-Properties -Object $observableObject.proof -Required @("machine_checkable", "forbidden") -Name "proof"

$machineCheckableValues = @(
    "required_fields_present",
    "modes_representable",
    "fallback_representable",
    "sig_representable",
    "forbidden_dependencies_absent"
)

$forbiddenValues = @(
    "audio_validation",
    "dsp_validation",
    "musical_validation",
    "patch_01_validation",
    "architecture_validation"
)

Assert-UniqueEnumArray `
    -Value $observableObject.proof.machine_checkable `
    -AllowedValues $machineCheckableValues `
    -RequiredValues $machineCheckableValues `
    -Name "proof.machine_checkable"

Assert-UniqueEnumArray `
    -Value $observableObject.proof.forbidden `
    -AllowedValues $forbiddenValues `
    -RequiredValues $forbiddenValues `
    -Name "proof.forbidden"

if (-not $Quiet) {
    Write-Output "OK: P0 direct/safe/sortie observable JSON parsed from $resolvedObservablePath"
}
