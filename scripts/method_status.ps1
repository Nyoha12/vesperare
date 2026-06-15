# method_status.ps1

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "=== Branch ==="
git branch --show-current

Write-Host ""
Write-Host "=== Git status ==="
git status --short

Write-Host ""
Write-Host "=== Recent local commits ==="
git log --oneline -n 5

Write-Host ""
Write-Host "=== Branch safety ==="
powershell -ExecutionPolicy Bypass -File "scripts\check_branch_safety.ps1"

Write-Host ""
Write-Host "=== Method structure ==="
powershell -ExecutionPolicy Bypass -File "scripts\check_method_structure.ps1"
