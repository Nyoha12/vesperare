# build_context_bundle.ps1

$ErrorActionPreference = "Stop"

$Root = (git rev-parse --show-toplevel).Trim()
Set-Location $Root

$OutDir = Join-Path $Root "ai_context"
New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

$Bundle = Join-Path $OutDir "_context_bundle.md"
$FileListPath = Join-Path $OutDir "_context_filelist.txt"
$ManifestPath = Join-Path $OutDir "_context_manifest.csv"
$StatusPath = Join-Path $OutDir "_context_git_status.txt"
$CommitsPath = Join-Path $OutDir "_context_recent_commits.txt"

function Add-Line {
    param([string]$Text = "")
    Add-Content -Path $Bundle -Value $Text -Encoding UTF8
}

function Add-CodeBlock {
    param(
        [string]$Title,
        [string]$Lang,
        [string]$Content
    )

    Add-Line ""
    Add-Line "## $Title"
    Add-Line ""
    Add-Line "````$Lang"
    Add-Line $Content
    Add-Line "````"
}

function Read-FileSafe {
    param([string]$Path)

    try {
        return Get-Content -Path $Path -Raw -Encoding UTF8
    }
    catch {
        return "[Impossible de lire ce fichier en UTF-8 : $Path]"
    }
}

function Is-ProbablyTextFile {
    param([string]$Path)

    $ext = [System.IO.Path]::GetExtension($Path).ToLowerInvariant()

    $textExts = @(
        ".md", ".txt", ".json", ".js", ".mjs", ".cjs",
        ".ts", ".tsx", ".jsx", ".html", ".css", ".scss",
        ".xml", ".yml", ".yaml", ".toml", ".ini",
        ".ps1", ".sh", ".py", ".maxpat", ".maxproj"
    )

    return $textExts -contains $ext
}

# ------------------------------------------------------------
# Collecte Git
# ------------------------------------------------------------

$GitStatus = git status --short
$RecentCommits = git log --oneline -n 30
$TrackedFiles = git ls-files | Sort-Object

$GitStatus | Set-Content -Path $StatusPath -Encoding UTF8
$RecentCommits | Set-Content -Path $CommitsPath -Encoding UTF8
$TrackedFiles | Set-Content -Path $FileListPath -Encoding UTF8

# ------------------------------------------------------------
# Manifest
# ------------------------------------------------------------

$Manifest = foreach ($file in $TrackedFiles) {
    if (Test-Path $file) {
        $item = Get-Item $file
        [PSCustomObject]@{
            path = $file
            extension = $item.Extension
            bytes = $item.Length
            directory = Split-Path $file -Parent
        }
    }
}

$Manifest | Export-Csv -Path $ManifestPath -NoTypeInformation -Encoding UTF8

# ------------------------------------------------------------
# Bundle principal
# ------------------------------------------------------------

if (Test-Path $Bundle) {
    Remove-Item $Bundle -Force
}

Add-Line "# Vesperare — AI Context Bundle"
Add-Line ""
Add-Line "Generated: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Add-Line "Repository: Nyoha12/vesperare"
Add-Line "Branch: $(git branch --show-current)"
Add-Line ""

Add-Line "# 1. Project note"
Add-Line ""

$ProjectNotePath = Join-Path $OutDir "_context_project_note.md"
if (Test-Path $ProjectNotePath) {
    Add-Line (Read-FileSafe $ProjectNotePath)
}
else {
    Add-Line "[No _context_project_note.md found]"
}

Add-CodeBlock "2. Git status" "txt" (($GitStatus | Out-String).Trim())
Add-CodeBlock "3. Recent commits" "txt" (($RecentCommits | Out-String).Trim())
Add-CodeBlock "4. Tracked files" "txt" (($TrackedFiles | Out-String).Trim())

Add-Line ""
Add-Line "# 5. File inventory by extension"
Add-Line ""

$Manifest |
    Group-Object extension |
    Sort-Object Count -Descending |
    ForEach-Object {
        $ext = if ($_.Name -eq "") { "[no extension]" } else { $_.Name }
        Add-Line "- $ext : $($_.Count)"
    }

Add-Line ""
Add-Line "# 6. Likely important files"
Add-Line ""

$ImportantNamePatterns = @(
    "README.md",
    "AGENTS.md",
    "CLAUDE.md",
    "SPEC.md",
    "VERIFY.md",
    "DECISIONS.md",
    "package.json",
    "package-lock.json",
    "pnpm-lock.yaml",
    "yarn.lock",
    ".gitignore"
)

$ImportantFiles = @()

foreach ($pattern in $ImportantNamePatterns) {
    $ImportantFiles += $TrackedFiles | Where-Object { $_ -ieq $pattern -or $_ -like "*/$pattern" }
}

$ImportantFiles += $TrackedFiles | Where-Object {
    $_ -match "\.maxproj$" -or
    $_ -match "\.maxpat$" -or
    $_ -match "\.js$" -or
    $_ -match "\.json$" -or
    $_ -match "\.md$"
}

$ImportantFiles = $ImportantFiles | Sort-Object -Unique

foreach ($file in $ImportantFiles) {
    if (!(Test-Path $file)) { continue }

    $item = Get-Item $file
    $size = $item.Length

    Add-Line ""
    Add-Line "## File: $file"
    Add-Line ""
    Add-Line "- Size: $size bytes"
    Add-Line "- Extension: $($item.Extension)"
    Add-Line ""

    if ((Is-ProbablyTextFile $file) -and ($size -le 120000)) {
        $content = Read-FileSafe $file

        if ($content.Length -gt 30000) {
            $content = $content.Substring(0, 30000) + "`n`n[TRUNCATED AFTER 30000 CHARACTERS]"
        }

        Add-Line "````txt"
        Add-Line $content
        Add-Line "````"
    }
    else {
        Add-Line "[Content not included: binary, unsupported, or too large.]"
    }
}

Add-Line ""
Add-Line "# 7. Next-step instructions for AI review"
Add-Line ""
Add-Line "The reviewer should first infer:"
Add-Line "- the real nature of the Max for Live project;"
Add-Line "- the likely core files;"
Add-Line "- the implicit system architecture;"
Add-Line "- the missing SPEC.md / VERIFY.md structure;"
Add-Line "- the files that require deeper reading next;"
Add-Line "- the risks specific to live musical performance, MIDI, audio, Live API, latency, ergonomics, and artistic control."

Write-Host "Context bundle generated at: $Bundle"
