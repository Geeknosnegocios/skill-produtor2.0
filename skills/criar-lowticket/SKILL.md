# /criar-lowticket — Criação Completa de Produto Low Ticket

Cria um produto digital low ticket do zero: estrutura, copy black, página com imagens e brief de criativo Meta.

## Como usar

```
/criar-lowticket [ideia]
/criar-lowticket ebook receitas para diabéticos
/criar-lowticket guia desparasitação natural
/criar-lowticket planilha financeira do casal
```

---

## O que o skill faz

1. Define o produto: título (3 opções A/B/C com ângulos distintos), subtítulo, promessa principal
2. Define público, dor principal, emoção dominante e ângulo de copy
3. Cria estrutura completa do conteúdo (índice detalhado)
4. Define formato de entrega: PDF / Planilha / HTML / Protocolo
5. Gera copy black da página de vendas (headline × 5, bullets × 7+, value stack, garantia, CTAs, hooks Meta)
6. Gera brief criativo para Meta Ads (vídeo 30s + carrossel 5 slides)
7. Adiciona automaticamente ao pipeline com `/pipeline-lowticket add`

---

## Estrutura de um produto low ticket ideal

### PDF / Ebook
- 20–60 páginas · capítulos curtos (2–4 páginas) · checklist no final
- Design simples (Canva template) · entrega via Kiwify / Hotmart

### Planilha
- Google Sheets com proteção de fórmulas · aba de instruções
- Dashboard visual automático · entrega via link de cópia protegida

### Template / Pack
- ZIP organizado + guia de uso PDF · entrega via link Drive ou Hotmart

---

## Preços por formato

| Formato | Profundidade | Preço |
|---|---|---|
| PDF simples | 15–25 páginas | R$10–17 |
| PDF robusto | 30–60 páginas + bônus | R$27–37 |
| PDF premium | 60+ páginas + checklist | R$47 |
| Planilha | Automatizada + instruções | R$27–47 |
| Pack de templates | 10–30 peças | R$17–37 |

---

## Copy black — estrutura obrigatória

Seguir skill-copywriting.md. Nível black:

1. **Headlines (5):** ego · dor · FOMO · revelação · identidade
2. **Hook Meta 3s (3 versões):** brutal, para no scroll
3. **Bullets (7+):** [resultado] + [como/sem o quê] — últimos 2 provocam medo de perder
4. **Value stack:** cada entregável com valor individual → total riscado → preço real
5. **Garantia:** seca, confiante, pode virar provocação
6. **CTAs (3):** resultado · urgência · provocação
7. **Captions Meta (3):** ego · FOMO · resultado

---

## Brief criativo — vídeo 30s (Meta)

```
[0-3s]   HOOK: afirmação brutal que para o scroll (ego ou dor)
[3-10s]  DOR: descreve a situação atual com linguagem espelho
[10-20s] SOLUÇÃO: apresenta o produto como a virada
[20-25s] PROVA: número específico, resultado concreto
[25-30s] CTA: "link na bio" / "arrasta pra cima" / "link nos comentários"
```

---

## Brief criativo — carrossel 5 slides (Meta/Instagram)

```
Slide 1: Hook visual + headline provocativa (para o scroll)
Slide 2: Dor em 3 bullets (linguagem espelho)
Slide 3: Solução — apresenta o produto
Slide 4: O que vem dentro (value stack visual)
Slide 5: Preço + urgência + CTA ManyChat keyword
```

---

## Output do skill

Cria subpasta `operacoes/lowticket/produtos-modelados/[slug]/` com:
- `briefing.md` — visão geral + público + funil
- `copy-black.md` — copy completa (headlines, bullets, value stack, hooks, captions)
- `entregavel-pdf.md` — conteúdo completo do produto

Após criar: "Quer a página HTML de vendas? Rode `/AGENTE-PAGINA`."
