# new_session_log.ps1

$ErrorActionPreference = "Stop"

$branch = (git branch --show-current).Trim()

if ($branch -eq "main") {
    Write-Host "STOP: You are on main. Do not create method session logs on main." -ForegroundColor Red
    exit 1
}

$dir = "projects\sessions"
New-Item -ItemType Directory -Force -Path $dir | Out-Null

$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$out = Join-Path $dir "SESSION_$timestamp.md"

@"
# SESSION_LOG

Date: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")

Branch: $branch

## Session type

## Goal

## Files read

## What should not be done in this session

## Spec needed?

## Verifier needed?

## What was established

## What remains uncertain

## Decisions

## Changes made

## Verification needed

## Durable learnings

## Skill updates needed

## Next minimal action

## Do not do next
"@ | Set-Content -Path $out -Encoding UTF8

Write-Host "Created session log: $out" -ForegroundColor Green
