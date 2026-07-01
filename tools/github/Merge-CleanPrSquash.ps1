[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateRange(1, [int]::MaxValue)]
    [int] $PrNumber,

    [Parameter(Mandatory = $true)]
    [string] $Subject,

    [Parameter(Mandatory = $true)]
    [string] $Body
)

Set-StrictMode -Version 2.0
$ErrorActionPreference = "Stop"

function Invoke-CheckedCommand {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Label,

        [Parameter(Mandatory = $true)]
        [string] $Command,

        [Parameter(Mandatory = $true)]
        [string[]] $Arguments
    )

    $previousErrorActionPreference = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    try {
        $output = & $Command @Arguments 2>&1
        $exitCode = $LASTEXITCODE
    }
    finally {
        $ErrorActionPreference = $previousErrorActionPreference
    }

    $text = ($output | ForEach-Object { $_.ToString() }) -join [Environment]::NewLine

    if ($exitCode -ne 0) {
        if ([string]::IsNullOrWhiteSpace($text)) {
            throw "$Label failed with exit code $exitCode."
        }
        throw "$Label failed with exit code $exitCode.`n$text"
    }

    return $text
}

function Assert-Equal {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Label,

        [AllowNull()]
        [object] $Actual,

        [Parameter(Mandatory = $true)]
        [object] $Expected
    )

    if ($Actual -ne $Expected) {
        throw "Refusing merge: $Label is '$Actual', expected '$Expected'."
    }
}

if ([string]::IsNullOrWhiteSpace($Subject)) {
    throw "Subject must not be empty."
}

if ([string]::IsNullOrWhiteSpace($Body)) {
    throw "Body must not be empty."
}

if ($null -eq (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw "GitHub CLI not found: gh"
}

$status = Invoke-CheckedCommand -Label "git status --short" -Command "git" -Arguments @("status", "--short")
if (-not [string]::IsNullOrWhiteSpace($status)) {
    throw "Refusing merge: local git status is not clean.`n$status"
}

$prJson = Invoke-CheckedCommand `
    -Label "gh pr view $PrNumber" `
    -Command "gh" `
    -Arguments @(
        "pr",
        "view",
        $PrNumber.ToString(),
        "--json",
        "number,state,headRefOid,mergeStateStatus,mergeable,isDraft,headRefName,baseRefName"
    )

try {
    $pr = $prJson | ConvertFrom-Json
}
catch {
    throw "Could not parse gh pr view JSON for PR #$PrNumber. $($_.Exception.Message)"
}

if ($null -eq $pr) {
    throw "Could not read PR #$PrNumber."
}

Assert-Equal -Label "state" -Actual $pr.state -Expected "OPEN"

if ($pr.isDraft -eq $true) {
    throw "Refusing merge: PR #$PrNumber is draft."
}

Assert-Equal -Label "mergeStateStatus" -Actual $pr.mergeStateStatus -Expected "CLEAN"
Assert-Equal -Label "mergeable" -Actual $pr.mergeable -Expected "MERGEABLE"
Assert-Equal -Label "baseRefName" -Actual $pr.baseRefName -Expected "main"

if ([string]::IsNullOrWhiteSpace([string] $pr.headRefOid)) {
    throw "Refusing merge: PR #$PrNumber has no headRefOid."
}

Write-Output "Merging PR #$PrNumber from '$($pr.headRefName)' into '$($pr.baseRefName)' with locked SHA $($pr.headRefOid)."

try {
    Invoke-CheckedCommand `
        -Label "gh api merge PR #$PrNumber" `
        -Command "gh" `
        -Arguments @(
            "api",
            "-X",
            "PUT",
            "repos/Nyoha12/vesperare/pulls/$PrNumber/merge",
            "-f",
            "commit_title=$Subject",
            "-f",
            "commit_message=$Body",
            "-f",
            "merge_method=squash",
            "-f",
            "sha=$($pr.headRefOid)"
        ) | Write-Output
}
catch {
    throw "gh api merge failed; PR #$PrNumber was left open.`n$($_.Exception.Message)"
}

Invoke-CheckedCommand -Label "git switch main" -Command "git" -Arguments @("switch", "main") | Write-Output
Invoke-CheckedCommand -Label "git pull --ff-only origin main" -Command "git" -Arguments @("pull", "--ff-only", "origin", "main") | Write-Output

$finalStatus = Invoke-CheckedCommand -Label "git status --short" -Command "git" -Arguments @("status", "--short")
if ([string]::IsNullOrWhiteSpace($finalStatus)) {
    Write-Output "OK: git status --short is clean."
}
else {
    Write-Output $finalStatus
}
