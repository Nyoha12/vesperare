# check_branch_safety.ps1

$ErrorActionPreference = "Stop"

$branch = (git branch --show-current).Trim()

if ($branch -eq "main") {
    Write-Host "STOP: You are on main. Do not modify main for method work." -ForegroundColor Red
    exit 1
}

if ($branch -ne "ai/method-core") {
    Write-Host "STOP: Expected branch ai/method-core, got $branch." -ForegroundColor Red
    exit 1
}

Write-Host "Branch safety OK: $branch" -ForegroundColor Green
exit 0
