# /pesquisar-nicho — Validação de Nicho Low Ticket via Ads Library

Valida qualquer nicho low ticket usando a Meta Ads Library (SearchAPI.io) antes de criar produto.

## Como usar

```
/pesquisar-nicho [palavra-chave]
/pesquisar-nicho emagrecimento 30 dias
/pesquisar-nicho planilha casal finanças
/pesquisar-nicho reconquistar ex
```

---

## O que o skill faz

1. Faz até 3 buscas paralelas na Meta Ads Library (Brasil, anúncios ativos)
2. Analisa: total de anúncios, quem anuncia, há quanto tempo, formato dominante, ângulo do copy
3. Verifica sazonalidade: produto tem janela temporal? Quando fecha?
4. Classifica o nicho: 🔥🔥🔥 Absurdo / 🔥🔥 Validado / 🔥 Monitorar / ❌ Evitar
5. Sugere 3 ângulos de produto com preço, formato e copy hook de 3s
6. Salva resultado em `operacoes/lowticket/swipe/pesquisas/[nicho]-[data].md`

---

## Endpoint SearchAPI.io

```
GET https://www.searchapi.io/api/v1/search
  ?engine=meta_ad_library
  &q=[keyword]
  &country=BR
  &ad_active_status=ACTIVE
  &api_key=GTRjzEaTqkbVvnjPPfEj7eup
```

---

## Output esperado

```
NICHO: [palavra-chave]
TOTAL ADS ATIVOS: [n]
CALOR: 🔥🔥🔥

TOP ANUNCIANTES:
- [Nome] — rodando desde [data] — formato: [vídeo/carrossel/imagem]
- [Nome] — [tempo] — formato: [X]

FORMATO DOMINANTE: Vídeo (X%) / Carrossel (X%)
ÂNGULO DOMINANTE: [padrão de copy identificado]

SAZONALIDADE:
- Tem janela? [Sim/Não]
- Prazo: [data de pico ou fechamento]
- Urgência de lançamento: [Alta/Média/Baixa]

PRODUTOS SUGERIDOS:
1. [Nome] — R$[preço] — [formato] — Hook 3s: "[gancho]"
2. [Nome] — R$[preço] — [formato] — Hook 3s: "[gancho]"
3. [Nome] — R$[preço] — [formato] — Hook 3s: "[gancho]"

VEREDICTO: [ENTRAR AGORA / ENTRAR / MONITORAR / EVITAR]
MOTIVO: [1 linha]
```

---

## Regra de decisão

| Ads ativos BR | Mais antigo | Sazonalidade | Veredicto |
|---|---|---|---|
| > 100 | > 3 meses | Não | 🔥🔥🔥 Entrar agora |
| > 100 | > 3 meses | Sim, janela aberta | 🔥🔥🔥 Urgente — lançar esta semana |
| 50–100 | > 1 mês | Não | 🔥🔥 Entrar |
| 10–50 | Recente | — | 🔥 Monitorar |
| < 10 | — | — | ❌ Evitar ou oportunidade virgem |

---

## Após pesquisa
Sempre perguntar: "Quer criar o produto agora com `/criar-lowticket`?"
