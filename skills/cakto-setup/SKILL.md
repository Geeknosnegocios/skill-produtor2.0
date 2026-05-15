---
name: cakto-setup
description: |
  Skill para configurar funil completo na Cakto: produto principal, orderbumps, upsells, downsell, pixels Meta, webhooks e atualização automática dos links nos arquivos HTML. Use este skill sempre que o usuário mencionar "configurar Cakto", "criar produto Cakto", "setup checkout Cakto", "colocar link Cakto", "cadastrar produto", "configurar funil Cakto", ou quando for preciso substituir placeholders de checkout em páginas HTML. Também use quando o usuário disser que quer subir um produto, lançar ou publicar uma oferta low ticket.
---

# /cakto-setup — Funil Completo na Cakto

Configura produto + funil de venda completo na Cakto, depois atualiza os links nos arquivos HTML do produto.

## Como usar

```
/cakto-setup [produto]
/cakto-setup pixia-primeiro-pix-em-minutos
/cakto-setup metodo-copa-2026
```

Se não for passado argumento, leia `operacoes/lowticket/briefing-ativo.md` para identificar o produto ativo.

---

## Antes de começar

Leia:
1. `operacoes/lowticket/briefing-ativo.md` — preços, nomes, funil completo
2. `operacoes/lowticket/produtos-modelados/[produto]/pagina-vendas.html` — localizar os placeholders `<!-- SUBSTITUA: link Kiwify -->` (ou Cakto)

Monte uma tabela com todos os itens do funil antes de iniciar:

| Item | Nome | Preço | Tipo |
|------|------|-------|------|
| Produto principal | ... | R$XX | produto |
| Orderbump 1 | ... | R$XX | bump |
| Orderbump 2 | ... | R$XX | bump (se houver) |
| Upsell 1 | ... | R$XX | upsell |
| Downsell | ... | R$XX | downsell |
| Upsell Final | ... | R$XX | upsell |

Apresente esta tabela ao usuário e peça confirmação antes de prosseguir.

---

## REFERÊNCIA — Funil PixIA (produto modelo)

Funil completo configurado em 2026-05-08. Usar como referência para novos produtos.

### Produto Principal
- **Nome:** PixIA — Primeiro Pix em Minutos
- **Descrição:** `Método PIX-ON: 7 formas de ganhar Pix com ChatGPT no celular. Primeiro Pix em minutos, sem aparecer, sem CNPJ, sem capital. Garantia 24h ou devolvo + R$10.`
- **Preço:** R$27,00
- **Página de vendas:** https://pixia-primeiro-pix-em-minutos.vercel.app
- **Imagem produto (300×250):** `assets/produto-cakto-thumb.png`

### Orderbump 1
- **Nome:** `100 Comandos Prontos pra Ganhar Pix`
- **Descrição:** `100 comandos prontos pra copiar no ChatGPT + 7 formas bônus de ganhar Pix. Sem pensar, sem criar nada do zero. Cola, executa, recebe.`
- **Preço:** R$17,00
- **Prompt imagem Nano Banana (4:3):**
```
Product thumbnail 4:3, dark obsidian background, glowing green smartphone screen showing list of numbered commands, green sparks, bold white number "100" large center, professional digital product cover, no text labels, photorealistic glow effect, #0a0e1a background, #22c55e accent
```

### Orderbump 2
- **Nome:** `Como Usar o ChatGPT Sem Travar`
- **Descrição:** `3 truques pra usar o ChatGPT gratuito sem limite de mensagens. Nunca mais ver a tela de "limite atingido". Funciona no celular agora.`
- **Preço:** R$9,90
- **Prompt imagem Nano Banana (4:3):**
```
Product thumbnail 4:3, dark obsidian background, smartphone screen showing ChatGPT interface with bright green checkmark overlay, green glow, clean minimal, photorealistic, #0a0e1a background, #22c55e accent, no text
```

### Orderbump 3
- **Nome:** `Pix no Piloto Automático`
- **Descrição:** `Agente de IA que prospecta cliente e manda mensagem sozinho enquanto você dorme. Sem digitar nada. Pix entra automático no celular.`
- **Preço:** R$67,00
- **Prompt imagem Nano Banana (4:3):**
```
Product thumbnail 4:3, dark obsidian background, smartphone showing green autopilot dashboard with Pix notifications stacking up automatically, robotic arm icon sending messages, green glow effect, futuristic minimal, photorealistic, #0a0e1a background, #22c55e accent, no text
```

### Orderbump 4
- **Nome:** `Primeiros 7 Dias Garantidos`
- **Descrição:** `Plano de ação dia a dia: o que fazer nas primeiras 168 horas pra garantir o primeiro Pix. Uma tarefa por dia. Sem improviso, sem dúvida.`
- **Preço:** R$27,00
- **Prompt imagem Nano Banana (4:3):**
```
Product thumbnail 4:3, dark obsidian background, 7-day calendar with green checkmarks on each day, green glowing progress trail connecting each day, last day showing Pix notification glow, clean minimal digital product cover, photorealistic glow, #0a0e1a background, #22c55e accent, no text
```

### Banner checkout (16:9) — Nano Banana 2
```
Wide cinematic banner 16:9, dark obsidian background #0a0e1a. Right side: confident Brazilian woman in her 30s smiling, wearing green blouse, holding smartphone showing bright green Pix logo screen, dramatic green rim lighting #22c55e, green light rays and sparks radiating behind her, green glowing grid lines at bottom. Left side: bold white Portuguese text reading "Quase lá..." as headline, below it "Ganhar dinheiro com IA não é difícil. O problema é não ter o método certo." then in bright green "Primeiro Pix em minutos — garantido." Bottom left green "Por apenas R$27 no lançamento!". Professional banner design, high contrast, photorealistic woman, clean typography hierarchy. No other text or words.
```

### Regras de copy (linguagem leiga)
Termos proibidos na copy (trocar pelos substitutos):
| Proibido | Usar |
|----------|------|
| prompt(s) | comando(s) |
| scripts | mensagens prontas |
| jobs | formas de ganhar Pix / serviços |
| ATS-friendly | que passa no filtro automático das empresas |
| caption | legenda |

### Deploy
- **Vercel:** https://pixia-primeiro-pix-em-minutos.vercel.app
- **Deploy command:** `vercel --prod --yes` na pasta do produto
- **Projeto Vercel:** `andreys-projects-5cafebdf/pixia-primeiro-pix-em-minutos`

---

## FASE 0 — Imagem do Produto (300×250px)

Gerar antes de criar o produto na Cakto. Usar Nano Banana (Gemini API via `/nanobanana`).

**Prompt padrão — adaptar com nome e nicho do produto:**

```
Product thumbnail for digital info product called [NOME DO PRODUTO]. Brazilian woman in her 30s, smiling confidently, holding smartphone showing green Pix payment notification screen with money received alert. Dark obsidian background (#0a0e1a). Bright green glow (#22c55e) emanating from phone screen. Small green paper money bills floating around phone. Clean minimal composition, centered subject, soft rim lighting. Flat product cover style, professional digital product image. 4:3 aspect ratio.
```

**Configuração Nano Banana:**
- Modelo: `gemini-2.5-flash-image`
- `aspectRatio: "4:3"` (resulta em ~300×225, aceito pelo Cakto)
- Salvar em: `assets/produto-cakto-thumb.png`

**Variáveis para adaptar por produto:**
- `[NOME DO PRODUTO]` → nome real
- Se não é produto Pix/renda: trocar "Pix payment notification" pelo resultado principal do produto
- Se público não é mulher: ajustar "Brazilian woman" para perfil correto

---

## FASE 0B — Banner do Checkout (16:9)

Banner exibido acima do formulário de checkout. Gerar SEM texto (texto vai por cima via componente Cakto).

**Prompt Nano Banana — banner checkout completo com texto integrado:**

```
Wide cinematic banner 16:9, dark obsidian background #0a0e1a. Right side: confident Brazilian woman in her 30s smiling, wearing green blouse, holding smartphone showing bright green Pix logo screen, dramatic green rim lighting #22c55e, green light rays and sparks radiating behind her, green glowing grid lines at bottom. Left side: bold white Portuguese text in large modern sans-serif font reading "Quase lá..." as headline, below it smaller white text "Ganhar dinheiro com IA não é difícil. O problema é não ter o método certo." then in bright green bold text "Primeiro Pix em minutos — garantido." Bottom left green accent text "Por apenas R$27 no lançamento!". Professional banner design, high contrast, photorealistic woman, clean typography hierarchy. No other text or words.
```

**Configuração:**
- Nano Banana 2 (`gemini-3.1-flash-image-preview`)
- `aspectRatio: "16:9"`
- Salvar: `assets/checkout-banner-final.png`

**Adaptar por produto:**
- Trocar `"Quase lá..."` pelo headline de urgência do produto
- Trocar `R$27` pelo preço real
- Trocar copy da promessa pelo mecanismo único do produto

**Nota:** Nano Banana 2 renderiza texto em imagem melhor que FLUX. Preferir sempre Nano Banana 2 para banners com texto integrado.

---

## FASE 1 — Produto Principal

**URL Cakto:** https://app.cakto.com.br/

### Passo a passo:
1. Acesse "Produtos" → "Novo Produto"
2. **Nome do produto:** exatamente como no briefing
3. **Tipo:** Produto Digital
4. **Preço:** valor do front-end (ex: R$27,00)
5. **Formato de cobrança:** À vista (parcelamento se aplicável)
6. **Página de obrigado:** URL da página de obrigado (se já existe) ou usar padrão Cakto por ora
7. **Descrição interna:** slug do produto (para identificação)
8. Salvar

**Coletar após criar:**
- `product_id` (aparece na URL: `cakto.com.br/[product_id]`)
- URL de checkout completa: `https://cakto.com.br/[product_id]`

Registre: `CHECKOUT_PRINCIPAL = https://cakto.com.br/[product_id]`

---

## FASE 2 — Orderbumps

**IMPORTANTE:** cada orderbump = produto separado na Cakto. Criar todos os produtos ANTES de configurar os bumps no produto principal.

### PASSO 1 — Criar cada orderbump como produto individual

Para cada orderbump, repetir o fluxo da FASE 1:
1. Cakto → Produtos → Novo Produto
2. Tipo: **Pagamento único**
3. Preencher: nome + descrição (mín. 100 chars) + preço + imagem
4. Salvar → anotar `product_id`

**Dados completos dos 4 orderbumps (PixIA — modelo):**

| # | Nome | Descrição | Preço |
|---|------|-----------|-------|
| OB1 | 100 Comandos Prontos pra Ganhar Pix | 100 comandos prontos pra copiar no ChatGPT + 7 formas bônus de ganhar Pix. Sem pensar, sem criar nada do zero. Cola, executa, recebe. | R$17,00 |
| OB2 | Como Usar o ChatGPT Sem Travar | 3 truques pra usar o ChatGPT gratuito sem limite de mensagens. Nunca mais ver a tela de "limite atingido". Funciona no celular agora. | R$9,90 |
| OB3 | Pix no Piloto Automático | Agente de IA que prospecta cliente e manda mensagem sozinho enquanto você dorme. Sem digitar nada. Pix entra automático no celular. | R$67,00 |
| OB4 | Primeiros 7 Dias Garantidos | Plano de ação dia a dia: o que fazer nas primeiras 168 horas pra garantir o primeiro Pix. Uma tarefa por dia. Sem improviso, sem dúvida. | R$27,00 |

**Imagem de cada orderbump:** gerar com Nano Banana 2, `aspectRatio: "4:3"` — prompts em REFERÊNCIA → Orderbump 1-4.

### PASSO 2 — Vincular bumps ao produto principal

Após criar os 4 produtos:
1. Produto principal → aba **"Order Bumps"** (ou "Pós-venda")
2. **"Adicionar Order Bump"**
3. Selecionar o produto criado
4. Definir posição (ordem de exibição no checkout)
5. Repetir para os 4 bumps

**Ordem recomendada no checkout:**
1. OB1 (R$17) — maior percepção de valor, menor resistência
2. OB2 (R$9,90) — preço psicológico irresistível
3. OB4 (R$27) — plano de ação, complementa a promessa
4. OB3 (R$67) — ticket maior, só para quem já clicou nos 3

**Coletar:**
- `product_id` de cada orderbump (para referência futura)

---

## FASE 3 — Upsells e Downsell

Upsells na Cakto ficam em "Pós-venda" → "Upsell" (fluxo após compra do produto principal).

### Upsell 1:
1. Produto principal → "Pós-venda" → "Adicionar Upsell"
2. **Nome:** nome do upsell (ex: "Modo Automático")
3. **Preço:** valor (ex: R$67,00)
4. **Página de vendas:** URL da página de upsell (se existir) — se não existir, usar checkout Cakto padrão
5. **Em caso de recusa:** configurar Downsell

### Downsell (recusa do Upsell 1):
1. No fluxo do Upsell 1 → "Se recusar" → "Adicionar Downsell"
2. **Nome:** nome do downsell (ex: "Job Express")
3. **Preço:** valor reduzido (ex: R$17,00)

### Upsell Final (pós-downsell ou pós-upsell 1):
1. Adicionar segundo upsell no fluxo
2. **Nome:** ex: "Mentoria Pix Diário 30d"
3. **Preço:** R$197,00

**Coletar para cada:**
- URL de checkout de cada upsell/downsell

---

## FASE 4 — Pixel Meta e Rastreamento

1. Produto principal → "Rastreamento" ou "Pixels"
2. **Meta Pixel ID:** solicitar ao usuário (ou buscar em `_contexto/.credenciais.env`)
3. **Evento de compra:** `Purchase` com valor dinâmico
4. **Google Tag Manager:** se aplicável
5. Verificar se "Pixel na página de obrigado" está ativo

---

## FASE 5 — Webhooks (se necessário)

Se o produto precisa de webhook (Zapier, ActiveCampaign, etc.):
1. Produto → "Integrações" → "Webhooks"
2. URL do webhook: solicitar ao usuário
3. Eventos: `purchase.approved`, `purchase.refunded`, `purchase.chargeback`

Para webhooks Supabase do ecosistema Geek: ver `memory/webhooks.md`.

---

## FASE 6 — Atualizar Links HTML (automático)

Após coletar todos os links, atualizar os arquivos HTML:

### Localizar placeholders:
```bash
grep -n "SUBSTITUA" operacoes/lowticket/produtos-modelados/[produto]/pagina-vendas.html
```

### Substituições a fazer:
- `<!-- SUBSTITUA: link Kiwify -->` ou `href="#"` nos CTAs → `CHECKOUT_PRINCIPAL`
- Orderbump: se houver card de orderbump na página → URL do bump
- Domínio: `<!-- SUBSTITUA: domínio -->` → domínio real (ou `cakto.com.br`)

Use Edit para substituir cada placeholder com a URL real coletada.

**Verificar após substituição:**
- Todos os botões CTA apontam para checkout real
- Nenhum `href="#"` solto nos botões de compra
- Script de verificação de domínio com domínio correto (ou remover se não tiver domínio próprio ainda)

---

## FASE 7 — Teste de Compra

1. Acessar checkout do produto principal
2. Usar cartão de teste Cakto (ou modo sandbox se disponível)
3. Verificar fluxo completo:
   - [ ] Página de checkout carrega
   - [ ] Orderbumps aparecem
   - [ ] Após compra → upsell aparece
   - [ ] Recusa → downsell aparece
   - [ ] Página de obrigado carrega
   - [ ] Pixel disparando (Meta Events Manager)
   - [ ] Webhook recebido (se configurado)

---

## FASE 8 — Deploy da Página Atualizada

Após links substituídos:

```bash
# Se deploy Vercel via pasta local:
# 1. Copiar pagina-vendas.html para pasta de deploy
# 2. git add + commit + push → Vercel auto-deploy

# Se deploy direto via Vercel CLI:
vercel --prod operacoes/lowticket/produtos-modelados/[produto]
```

---

## Output final

Ao concluir, apresentar tabela de links gerados:

| Item | URL Checkout |
|------|-------------|
| Produto Principal | https://cakto.com.br/... |
| Orderbump 1 | (configurado no produto) |
| Upsell 1 | https://cakto.com.br/... |
| Downsell | https://cakto.com.br/... |
| Upsell Final | https://cakto.com.br/... |

E confirmar: "Página HTML atualizada ✅ — pronta para deploy."

---

## PASSO FINAL OBRIGATÓRIO — Instalar FOP (Match Quality 9+)

Após confirmar página atualizada, **SEMPRE** perguntar:

> "Cakto configurada ✅. Instalar FOP (Funil de Otimização do Pixel)? Cria workspace MetricaGeek + Pixel CAPI server-side + GeekPixel.js. Match Quality 9+ em todos eventos."

Se sim, invocar skill `fop-install` passando:
- Nome do produto
- Pixel Meta ID configurado
- Domínio(s) de deploy
- Path local do projeto

A skill `fop-install` automatiza:
1. **`provision.mjs`** — Cria workspace MetricaGeek + webhook + Meta integration (token encrypted)
2. **`inject-snippet.mjs`** — Substitui pixel inline em todos HTMLs por GeekPixel loader
3. Output: webhook URL pra Cakto + dashboard URL + git commit/push

**Webhook Cakto** após FOP:
- URL: `https://metricageek.vercel.app/api/webhook/<webhook_secret>` (output do provision)
- Cakto: Produto → Notificações → Webhook → adiciona URL acima
- Variáveis: `{transaction_id}` (Cakto detectada auto via payload structure)

Substitui pixel inline atual — depois FOP installed, browser pixel + CAPI server-side + AM propagado funcionam juntos com dedup via event_id.

---

## Troubleshooting comum

| Problema | Solução |
|----------|---------|
| Não acha "Order Bump" | Verificar se plano Cakto inclui OB (plano Pro+) |
| Upsell não aparece após compra | Checar se fluxo está "ativo" no produto |
| Pixel não dispara | Testar com Meta Pixel Helper extensão Chrome |
| Checkout dá erro 404 | product_id incorreto — verificar URL diretamente no painel |

---

## Notas de plataforma

- Cakto chama orderbumps de "Order Bumps" (às vezes "Complemento")
- Upsells ficam em "Pós-venda" → fluxo sequencial
- product_id aparece na URL do painel: `/products/[id]/edit`
- URL pública de checkout: `https://cakto.com.br/[product_id]` (sem `app.`)
- Cakto suporta split de pagamento para afiliados (não necessário agora)
