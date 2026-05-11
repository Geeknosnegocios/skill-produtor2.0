# AGENTE-CRIATIVO — Criativos Meta Ads com Ângulos Variados

**OBRIGATÓRIO:**
1. Leia `operacoes/lowticket/briefing-ativo.md`
2. Leia `operacoes/lowticket/produtos-modelados/[produto]/copy-black.md`

Gera kit completo de criativos para Meta Ads com ângulos distintos, mantendo congruência total com o produto e a copy aprovada. Pronto para testar em CBO.

---

## Fluxo

**Sem briefing-ativo.md:**
```
Nenhum briefing ativo. Rode /modelar-produto primeiro.
```

**Com briefing + copy → geração imediata. Sem perguntas.**

---

## Princípio de congruência total

**Todo criativo deve ser congruente com a página de vendas:**
- Mesmo público-alvo
- Mesmo mecanismo do produto
- Mesmo CTA (mesmo que em versão comprimida)
- Ângulo diferente = porta de entrada diferente → mesma sala

**Regra de ouro:** pessoa vê o criativo → clica → abre a página → a headline da página ecoa o que o criativo prometeu. Sem dissonância.

---

## Os 8 Ângulos Padrão

| # | Ângulo | Gatilho dominante | Abertura |
|---|---|---|---|
| 1 | **Ego/Status** | Orgulho | "Você vai ser a pessoa que..." |
| 2 | **Dor/Vergonha** | Medo de perder | "Enquanto você hesita..." |
| 3 | **FOMO/Urgência** | Perda iminente | "Isso some em [X] dias" |
| 4 | **Resultado/Prova** | Certeza | "De [situação A] para [situação B] em [tempo]" |
| 5 | **Antes/Depois** | Transformação | "Antes: [dor]. Depois: [resultado]" |
| 6 | **Revelação/Segredo** | Curiosidade | "Ninguém te contou que..." |
| 7 | **Identidade** | Pertencimento | "Essa é a mulher/homem que..." |
| 8 | **Ataque ao Concorrente** | Indignação | "Por que [concorrente] cobra R$XXX e você não precisa pagar isso" |

---

## O que entregar — kit completo por produto

### BLOCO 1 — VSL Roteiro 60s (3 versões com ângulos diferentes)

Para cada VSL:
```
ÂNGULO: [nome do ângulo]
[0-3s]   HOOK: [afirmação que para o scroll]
[3-15s]  PROBLEMA: [dor em linguagem espelho — o que a pessoa sente agora]
[15-40s] SOLUÇÃO: [apresenta produto + mecanismo único em 1 frase]
[40-50s] PROVA: [número específico + resultado real]
[50-60s] CTA: [ação + urgência + onde encontrar]
```

Versão A: ângulo Dor/Vergonha
Versão B: ângulo Resultado/Prova
Versão C: ângulo Ego/Status

### BLOCO 2 — UGC 30s (formato celular vertical, tom pessoal)

```
ÂNGULO: [escolher o que mais converte pro nicho — normalmente Antes/Depois ou Identidade]
[0-3s]   Gancho pessoal: "Cara, eu não acreditava que ia funcionar, mas..."
[3-12s]  Contexto: quem fala, situação anterior (dor sem dramatizar)
[12-22s] Solução: como encontrou o produto, o que fez
[22-27s] Resultado: dado específico alcançado
[27-30s] CTA: "Link na bio / Comenta [KEYWORD] que te mando"
```

### BLOCO 3 — Carrossel 5 Slides (3 variações de ângulo)

Para cada variação, entregar os 5 slides com copy de cada slide:

**Variação A — Ângulo Resultado:**
```
Slide 1: [Hook visual — frase de parar no scroll, fundo chamativo]
Slide 2: [A dor em 3 bullets — linguagem espelho]
Slide 3: [O produto como virada — nome + mecanismo em 1 frase]
Slide 4: [O que vem dentro — value stack visual com bullets]
Slide 5: [Preço + urgência + CTA + keyword ManyChat]
```

**Variação B — Ângulo Dor/Vergonha:**
```
Slide 1: [Frase que provoca identificação com a dor — sem julgamento]
Slide 2: [Por que a situação atual está piorando — 3 razões]
Slide 3: [Existe uma saída — apresenta o produto]
Slide 4: [Prova de quem já saiu — testemunho + resultado]
Slide 5: [CTA + preço + keyword]
```

**Variação C — Ângulo Revelação:**
```
Slide 1: [Declaração contraintuitiva que gera curiosidade]
Slide 2: [O que todo mundo faz errado — 3 erros comuns]
Slide 3: [O que funciona de verdade — o mecanismo único]
Slide 4: [Resultado de quem aplicou]
Slide 5: [CTA + preço + keyword]
```

### BLOCO 4 — Imagem Estática (brief para Canva/Freepik)

Gerar brief completo para 5 criativos estáticos, um por ângulo dominante:

```
CRIATIVO: [número]
ÂNGULO: [nome]
FORMATO: Feed 1:1 (1080×1080) OU Stories 9:16 (1080×1920)
FUNDO: [cor/estilo — ex: fundo escuro com accent da cor do nicho]
HEADLINE VISUAL: [máx 6 palavras — legível em thumbnail]
SUBTEXT: [1 linha complementar]
ELEMENTO VISUAL: [foto/ícone/ilustração — descrever em detalhes para Freepik]
CTA BOTÃO: [texto do botão]
KEYWORD MANCHETE: [palavra que resume o ângulo]
PROMPT FREEPIK: [prompt completo para gerar imagem via API Mystic]
```

### BLOCO 5 — Hooks Texto (para caption de cada criativo)

Para cada um dos 8 ângulos, entregar:
- Hook linha 1 (para no scroll — máx 10 palavras)
- Corpo (máx 5 linhas)
- CTA final (keyword ManyChat ou link direto)

---

## Regras de congruência entre ângulos

**O que PODE variar por ângulo:**
- Tom emocional (raiva × esperança × orgulho)
- Porta de entrada (dor × sonho × identidade)
- Hook visual (frase de abertura)
- Elemento visual dominante

**O que NÃO pode variar entre criativos do mesmo produto:**
- O mecanismo único do produto
- A promessa central (resultado + prazo)
- O preço anunciado
- O CTA e a keyword ManyChat
- A página de destino

---

## Regras de formato

- VSL: linguagem oral, frases curtas, pausas marcadas com `—`
- UGC: tom pessoal, primeira pessoa, imperfeito intencional ("cara", "tipo", "olha")
- Carrossel: copy visual, máx 8 palavras por slide na headline
- Estática: headline legível em 2 segundos no feed
- Caption: hook brutal na linha 1 — sem introdução educada

---

## Proibido em qualquer criativo
- Promessa de resultado garantido sem condicionante
- Depoimentos fabricados com valores absurdos
- Imagens de dinheiro em pilha ou notas espalhadas
- "Fique rico" / "Lucro garantido" / "100% de sucesso"
- Tom de pirâmide ou esquema
- Antes/Depois com peso em pessoas reais (política Meta)

---

## Matriz de teste recomendada

Para testar com CBO R$100/dia (estrutura 1×3×5):

| Adset | Ângulo | Formato | Prioridade |
|---|---|---|---|
| Adset 1 (Frio) | Dor + Resultado | VSL 60s + UGC | Alta |
| Adset 2 (Interesses) | Ego + Revelação | Carrossel A + B | Média |
| Adset 3 (Lookalike) | Antes/Depois + Identidade | Estática 3 formatos | Alta |

Regra de corte: R$50 por criativo sem 1 resultado → pausar. Após 3 dias, escalar o que teve CTR > 1.5% + CPA < meta.

---

## Saída
Salvar em: `operacoes/lowticket/produtos-modelados/[nome-produto]/criativos/kit-criativos.md`

Estrutura de subpastas:
```
criativos/
├── kit-criativos.md       ← este arquivo
├── vsls/                  ← roteiros VSL A/B/C
├── ugc/                   ← roteiro UGC
├── carrosseis/            ← copy dos 3 carrosseis
├── estaticas/             ← briefs das 5 imagens
└── hooks/                 ← 8 hooks de caption
```

Após kit: "Quer os HTMLs dos carrosseis prontos para screenshot? Rode /AGENTE-PAGINA com argumento `carrossel`."
