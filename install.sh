#!/usr/bin/env bash
# Produtor Milionário 2.0 — Bundle de Skills para Claude Code
# Instala 10 skills em ~/.claude/skills/
# Uso: curl -fsSL https://raw.githubusercontent.com/Geeknosnegocios/skill-produtor2.0/main/install.sh | bash

set -e

SKILLS_DIR="$HOME/.claude/skills"
REPO_URL="https://github.com/Geeknosnegocios/skill-produtor2.0.git"
TMP_DIR="$(mktemp -d)"

echo ""
echo "╔══════════════════════════════════════════════════╗"
echo "║  Produtor Milionário 2.0 — Skills Bundle          ║"
echo "╚══════════════════════════════════════════════════╝"
echo ""

# Clonar repo
echo "→ Baixando skills..."
git clone --depth=1 "$REPO_URL" "$TMP_DIR/pm2-skills" 2>/dev/null

# Criar destino se não existir
mkdir -p "$SKILLS_DIR"

# Copiar skills
SKILLS=(
  "pesquisar-nicho"
  "criar-lowticket"
  "modelar-produto"
  "skill-copywriting"
  "cakto-setup"
  "skill-frontend"
  "karpathy-guidelines"
  "AGENTE-COPY"
  "AGENTE-PAGINA"
  "AGENTE-CRIATIVO"
  "fop-install"
)

for skill in "${SKILLS[@]}"; do
  cp -r "$TMP_DIR/pm2-skills/skills/$skill" "$SKILLS_DIR/"
  echo "  ✓ $skill"
done

# Limpar temp
rm -rf "$TMP_DIR"

echo ""
echo "✅ 11 skills instaladas em $SKILLS_DIR"
echo ""
echo "Reinicie o Claude Code e use:"
echo "  /pesquisar-nicho    → validar nicho com Meta Ads Library"
echo "  /modelar-produto    → modelar produto"
echo "  /criar-lowticket    → criar produto completo (briefing + copy + estrutura)"
echo "  /AGENTE-COPY        → copy black completa (headlines, bullets, VSL, hooks)"
echo "  /AGENTE-PAGINA      → página HTML completa pronta para Vercel"
echo "  /AGENTE-CRIATIVO    → kit criativos Meta (VSL + UGC + carrossel + estáticas)"
echo "  /cakto-setup        → montar funil Cakto 9 produtos"
echo "  /fop-install        → Pixel + CAPI + Match Quality 9+ (MetricaGeek)"
echo ""
