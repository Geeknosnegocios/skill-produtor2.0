# /modelar-produto — Orquestração Completa de Produto Low Ticket

Transforma qualquer produto da concorrência (HTML da página) em oferta própria completa: briefing + copy black + página com imagens + entregável.

## Como usar

```
/modelar-produto                          → fluxo interativo
/modelar-produto [URL da página]          → baixa e processa automaticamente
/modelar-produto [arquivo em produtos-entrada/]  → processa arquivo existente
```

---

## Fluxo completo (4 fases)

### FASE 1 — Captura do produto
1. Se URL fornecida: usar `https://www.view-page-source.com/pt/?url=[URL]` para obter HTML
2. Salvar HTML em `operacoes/lowticket/produtos-entrada/[nome-produto].html`
3. Confirmar: "Produto capturado. Iniciando análise."

### FASE 2 — Briefing (execute silenciosamente, sem perguntar)
Extrair do HTML:
- Nome, promessa, preço, formato atual
- Público-alvo real (quem compra)
- Dor principal + ângulo emocional dominante
- Transformação (antes → depois)
- Entregáveis existentes
- Funil atual e lacunas
- **Sazonalidade:** produto tem janela temporal? (Copa, Dia das Mães, eleições, etc)

Gerar e salvar em `operacoes/lowticket/briefing-ativo.md`:

```markdown
# Briefing de Oferta — [NOME]
Gerado em: [DATA]

## Produto Original
- Nome:
- Promessa atual:
- Preço atual:
- Formato:
- Plataforma:

## Público-Alvo
- Quem é:
- Dor principal:
- Emoção dominante: (alívio / conquista / urgência / pertencimento / raiva)
- O que já tentou:
- Desejo real:

## Oferta Modelada
- Novo nome:
- Nova promessa:
- Preço front recomendado: R$
- Ângulo principal:
- Diferencial:
- Sazonalidade: [Sim/Não — prazo se sim]

## Funil Completo
- Front-end: [nome] R$[valor]
- Orderbump 1: [nome] R$[valor] — [promessa 1 linha]
- Orderbump 2: [nome] R$[valor] — [promessa 1 linha]
- Upsell 1: [nome] R$[valor] — [gatilho de conversão]
- Downsell: [nome] R$[valor] — [versão reduzida]
- Upsell Final: [nome] R$[valor] — [continuidade]

## Entregáveis do Produto
- [lista do que será entregue]

## Value Stack (para copy)
- [Entregável 1]: R$XX
- [Entregável 2]: R$XX
- Total percebido: R$XXX
- Preço de venda: R$XX

## Identidade Visual Sugerida
- Estilo (1-5 da skill-frontend):
- Paleta:
- Fontes:
- Tom visual:
- Gancho visual principal: (comparativo / grid / antes-depois)

## Referências de Mercado
- Ticket médio do nicho: R$
- Principais objeções:
- Gatilhos que mais convertem:
```

### FASE 3 — Execução dos agentes (em sequência)

Após briefing gerado, executar automaticamente:

1. **`/AGENTE-COPY`** → gera copy black completa (headlines, bullets, value stack, hooks Meta)
   Salva em: `operacoes/lowticket/produtos-modelados/[nome]/copy-black.md`

2. **`/AGENTE-PAGINA`** → gera página HTML com imagens Pollinations + ui-avatars + count-up
   Salva em: `operacoes/lowticket/produtos-modelados/[nome]/pagina-vendas.html`

3. **`/AGENTE-ENTREGAS`** → gera conteúdo completo do PDF/entregável
   Salva em: `operacoes/lowticket/produtos-modelados/[nome]/entregavel-pdf.md`

### FASE 4 — Registro no pipeline

Adicionar produto ao `operacoes/lowticket/pipeline.json` com etapa `pronto`.

Exibir resumo:
```
✅ PRODUTO MODELADO: [nome]
📄 Briefing:    operacoes/lowticket/briefing-ativo.md
✍️  Copy Black:  operacoes/lowticket/produtos-modelados/[nome]/copy-black.md
🌐 Página:      operacoes/lowticket/produtos-modelados/[nome]/pagina-vendas.html
📦 Entregável:  operacoes/lowticket/produtos-modelados/[nome]/entregavel-pdf.md

PRÓXIMOS PASSOS:
1. Crie o produto na Kiwify → copie o link de checkout
2. Substitua "<!-- SUBSTITUA: link Kiwify -->" na página (grep para achar)
3. Suba na Vercel: cd [pasta] && vercel --prod
4. Configure orderbump e upsell na Kiwify
5. /pipeline-lowticket mover [ID] no-ar
```

---

## Referências de preço BR

| Elemento | Faixa |
|---|---|
| Front-end | R$17–47 |
| Orderbump 1 | R$9,90–19,90 |
| Orderbump 2 | R$9,90–19,90 |
| Upsell 1 | R$27–67 |
| Downsell | R$17–27 |
| Upsell Final | R$47–97 |

---

## Nichos prioritários (validados pela Ads Library)

🔥🔥🔥 Traição/descobrir · Disfunção erétil · Pressão alta sem remédio · Reconquistar ex · Negativado/nome sujo · Gordura no fígado · Diabetes natural · Emagrecimento · Finanças pessoais

🔥🔥 Copa/bolão (sazonal jun/2026) · Dia das Mães (sazonal mai) · Artesanato renda extra · Ansiedade natural

---

## Regra de ouro
Nunca copie — modele. Extraia o que funciona (ângulo, dor, promessa) e crie versão própria com nome diferente, posicionamento diferente, entregável diferente.
