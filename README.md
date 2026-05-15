# Produtor Milionário 2.0 — Skills Bundle

Skills oficiais do curso **Produtor Milionário 2.0 — Era IA**.  
Instala 11 skills no Claude Code com 1 comando.

---

## Instalação

### Mac / Linux
```bash
curl -fsSL https://raw.githubusercontent.com/Geeknosnegocios/skill-produtor2.0/main/install.sh | bash
```

### Windows (PowerShell)
```powershell
irm https://raw.githubusercontent.com/Geeknosnegocios/skill-produtor2.0/main/install.ps1 | iex
```

Reinicie o Claude Code após instalar.

---

## Skills incluídas

| Skill | Comando | O que faz |
|---|---|---|
| pesquisar-nicho | `/pesquisar-nicho` | Valida nicho via Meta Ads Library antes de criar produto |
| modelar-produto | `/modelar-produto` | Modela produto completo com briefing estruturado |
| criar-lowticket | `/criar-lowticket` | Cria produto low ticket do zero (briefing + copy + estrutura) |
| **AGENTE-COPY** | `/AGENTE-COPY` | Copy black completa: 5 headlines, bullets, value stack, VSL, 3 hooks Meta, captions |
| **AGENTE-PAGINA** | `/AGENTE-PAGINA` | Página HTML de vendas completa com imagens, animações e proteção — pronta para Vercel |
| **AGENTE-CRIATIVO** | `/AGENTE-CRIATIVO` | Kit criativos Meta Ads: VSL 60s (3 ângulos) + UGC 30s + 3 carrosseis + 5 imagens estáticas + 8 hooks |
| skill-copywriting | *(automática)* | Framework Eugene Schwartz — copy de resposta direta |
| cakto-setup | `/cakto-setup` | Monta funil completo no Cakto (OBs, upsells, downsells) |
| skill-frontend | *(automática)* | Padrões de página HTML de alta conversão |
| karpathy-guidelines | *(sempre ativa)* | Princípios de execução: pensar antes, mudanças cirúrgicas, foco em objetivo |
| **fop-install** | `/fop-install` | **Funil de Otimização do Pixel** — provisiona workspace MetricaGeek + GeekPixel.js + CAPI server-side. Match Quality 9+ em todos eventos, Advanced Matching propagado, banco próprio. Substitui Stape/GTM. **OBRIGATÓRIO antes de subir ads.** |

---

## Pipeline completo

```
1. /pesquisar-nicho [palavra-chave]
   → valida calor do nicho no Meta Ads BR antes de criar qualquer coisa

2. /criar-lowticket [ideia]
   → gera briefing.md + estrutura do produto + copy inicial

3. /AGENTE-COPY
   → copy black completa baseada no briefing
   → 5 headlines · bullets · value stack · VSL · 3 hooks · 3 captions

4. /AGENTE-PAGINA
   → página HTML de vendas pronta (10 seções, imagens, animações)
   → salva em produtos-modelados/[produto]/pagina-vendas.html
   → deploy: vercel --prod

5. /AGENTE-CRIATIVO
   → kit completo de criativos Meta Ads
   → VSL 60s (3 versões) · UGC 30s · carrosseis (3 ângulos) · imagens estáticas (5) · hooks (8)
   → todos congruentes com a página de vendas

6. /cakto-setup [produto]
   → monta funil no Cakto: front + OB + 2 upsells + 2 downsells
```

---

## Uso rápido

```
# Validar nicho
/pesquisar-nicho renda extra celular

# Criar produto do zero
/criar-lowticket guia financeiro para casais

# Copy depois do briefing
/AGENTE-COPY

# Página HTML depois da copy
/AGENTE-PAGINA

# Kit de criativos para Meta Ads
/AGENTE-CRIATIVO

# Montar funil no Cakto
/cakto-setup [nome-produto]
```

---

## Requisitos

- [Claude Code](https://claude.ai/code) instalado
- Git instalado (para clone automático)
- Conta Cakto (para `/cakto-setup`)

---

> Acesso ao curso: [geekacademy.site](https://geekacademy.site)
