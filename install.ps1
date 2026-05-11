# Produtor Milionário 2.0 — Bundle de Skills para Claude Code (Windows)
# Instala 10 skills em ~/.claude/skills/
# Uso: irm https://raw.githubusercontent.com/Geeknosnegocios/skill-produtor2.0/main/install.ps1 | iex

$ErrorActionPreference = "Stop"

$SkillsDir = Join-Path $env:USERPROFILE ".claude\skills"
$RepoUrl   = "https://github.com/Geeknosnegocios/skill-produtor2.0.git"
$TmpDir    = Join-Path $env:TEMP "pm2-skills-$(Get-Random)"

Write-Host ""
Write-Host "╔══════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║  Produtor Milionário 2.0 — Skills Bundle          ║" -ForegroundColor Cyan
Write-Host "╚══════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""

Write-Host "→ Baixando skills..." -ForegroundColor Yellow
git clone --depth=1 $RepoUrl $TmpDir 2>$null

New-Item -ItemType Directory -Force -Path $SkillsDir | Out-Null

$Skills = @(
  "pesquisar-nicho",
  "criar-lowticket",
  "modelar-produto",
  "skill-copywriting",
  "cakto-setup",
  "skill-frontend",
  "karpathy-guidelines",
  "AGENTE-COPY",
  "AGENTE-PAGINA",
  "AGENTE-CRIATIVO"
)

foreach ($skill in $Skills) {
  $src  = Join-Path $TmpDir "skills\$skill"
  $dest = Join-Path $SkillsDir $skill
  Copy-Item -Recurse -Force $src $dest
  Write-Host "  ✓ $skill" -ForegroundColor Green
}

Remove-Item -Recurse -Force $TmpDir

Write-Host ""
Write-Host "✅ 10 skills instaladas em $SkillsDir" -ForegroundColor Green
Write-Host ""
Write-Host "Reinicie o Claude Code e use:"
Write-Host "  /pesquisar-nicho    → validar nicho com Meta Ads Library"
Write-Host "  /modelar-produto    → modelar produto"
Write-Host "  /criar-lowticket    → criar produto completo (briefing + copy + estrutura)"
Write-Host "  /AGENTE-COPY        → copy black completa (headlines, bullets, VSL, hooks)"
Write-Host "  /AGENTE-PAGINA      → página HTML completa pronta para Vercel"
Write-Host "  /AGENTE-CRIATIVO    → kit criativos Meta (VSL + UGC + carrossel + estáticas)"
Write-Host "  /cakto-setup        → montar funil Cakto 9 produtos"
Write-Host ""
