# check_method_structure.ps1

$ErrorActionPreference = "Stop"

$required = @(
    "AGENTS.md",
    "ai_method/00_METHOD_OVERVIEW.md",
    "ai_method/01_SESSION_PROTOCOL.md",
    "ai_method/02_SPEC_VERIFIER_ENVIRONMENT.md",
    "ai_method/03_POWER_PHRASES.md",
    "ai_method/04_COMMON_LAYER.md",
    "ai_method/05_SKILLS_BLUEPRINT.md",
    "ai_method/06_SUBAGENTS_PROTOCOL.md",
    "ai_method/07_GUARDRAILS_AND_PERMISSIONS.md",
    "ai_method/08_AUTOMATION_VS_AUGMENTATION.md",
    "ai_method/09_TEMPLATES.md",
    "ai_method/10_STARTING_A_SESSION.md",
    "skills/project-intake/SKILL.md",
    "skills/write-spec/SKILL.md",
    "skills/verify-output/SKILL.md",
    "skills/ingest-source/SKILL.md",
    "skills/improve-system/SKILL.md",
    "skills/automation-check/SKILL.md",
    "evals/checklists/SPEC_QUALITY_CHECKLIST.md",
    "evals/checklists/VERIFY_QUALITY_CHECKLIST.md",
    "evals/checklists/SKILL_QUALITY_CHECKLIST.md",
    "evals/checklists/SOURCE_INGESTION_CHECKLIST.md",
    "evals/checklists/SESSION_END_CHECKLIST.md",
    "evals/rubrics/AUTOMATION_RISK_RUBRIC.md",
    "scripts/check_branch_safety.ps1",
    "scripts/new_session_log.ps1",
    "scripts/method_status.ps1"
)

$missing = @()

foreach ($path in $required) {
    if (!(Test-Path $path)) {
        $missing += $path
    }
}

if ($missing.Count -gt 0) {
    Write-Host "Missing method files:" -ForegroundColor Red
    $missing | ForEach-Object { Write-Host " - $_" -ForegroundColor Red }
    exit 1
}

Write-Host "AI method structure OK." -ForegroundColor Green
exit 0
