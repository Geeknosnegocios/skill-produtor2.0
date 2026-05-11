# AGENTE-PAGINA — Gerador de Páginas HTML com Imagens

**OBRIGATÓRIO:**
1. Leia `operacoes/lowticket/briefing-ativo.md`
2. Se copy-black existir em `[produto]/copy-black.md`, use-a. Senão leia `copy.md`.

Gera páginas HTML completas, responsivas, com imagens reais e ganchos visuais. Pronta para Vercel.

---

## Fluxo

**Sem briefing-ativo.md:**
```
Nenhum briefing ativo. Rode /modelar-produto primeiro.
```

**Com briefing → geração imediata. Sem perguntas.**

---

## Estrutura obrigatória — página de vendas (10 seções)

```
1. HERO          → headline + imagem Pollinations + CTA + countdown (se sazonalidade)
2. PROVA SOCIAL  → 3 números com count-up animado
3. PROBLEMA      → 3 dores em cards (borda danger no topo)
4. GANCHO VISUAL → comparativo antes/depois OU grid de ingredientes/sinais/variáveis
5. BULLETS       → 7+ benefícios em grid 2 colunas desktop
6. DEPOIMENTOS   → 3 cards com avatares ui-avatars.com
7. OFERTA        → value stack riscado + preço real + orderbump card amarelo
8. GARANTIA      → ícone escudo + texto seco + borda accent esquerda
9. FAQ           → 5-6 details/summary CSS only
10. FOOTER       → ano dinâmico + aviso legal (se saúde)
```

---

## Imagens — regras de uso

**Hero (obrigatório):**
```html
<img src="https://image.pollinations.ai/prompt/[prompt-url-encoded]?width=520&height=360&nologo=true"
     alt="[nome produto]" width="520" height="360"
     loading="eager" fetchpriority="high"
     onerror="this.style.display='none'">
```
Prompt deve descrever visualmente o produto/nicho (ingredientes, dashboard, emoção, etc).

**Depoimentos (obrigatório):**
```html
<img src="https://ui-avatars.com/api/?name=[Nome]+[Sobrenome]&background=[hex]&color=fff&size=56&bold=true&rounded=true"
     alt="Foto de [Nome]" width="56" height="56" loading="lazy">
```

**Ícones (SVG inline — sem dependência):**
Usar SVG inline para escudo (garantia), check (bullets), cadeado (segurança).

---

## Animações obrigatórias

- **Scroll reveal:** `.reveal` + IntersectionObserver em todas as seções/cards
- **Count-up:** `.count-up[data-target]` + IntersectionObserver na barra de prova social
- **CTA pulse:** `@keyframes pulse` com rgba(--cta-rgb)
- **CTA sticky mobile:** aparece após scroll do hero, some no CTA principal
- **Countdown (sazonalidade):** se produto tem janela temporal

---

## Proteção obrigatória em todo HTML

```html
<!-- comentário watermark antes do DOCTYPE -->
<!--
  Produto: [NOME]
  Proprietário: [MARCA]
  Data: [DATA]
-->
```

```html
<!-- verificação de domínio — primeiro script no body -->
<script>
(function(){
  var d=['SEU-DOMINIO.com','www.SEU-DOMINIO.com','localhost','127.0.0.1'];
  if(!d.includes(window.location.hostname)){
    document.documentElement.innerHTML='';
    window.location.replace('https://SEU-DOMINIO.com');
  }
})();
</script>
```

```html
<!-- bloqueio inspeção — último script antes de /body -->
<script>
document.addEventListener('contextmenu',function(e){e.preventDefault();});
document.addEventListener('keydown',function(e){
  if(e.key==='F12'||((e.ctrlKey&&e.shiftKey)&&['I','J','C'].includes(e.key))||(e.ctrlKey&&e.key==='U')){
    e.preventDefault(); return false;
  }
});
</script>
```

---

## Ganchos visuais por nicho

| Nicho | Gancho principal |
|---|---|
| Renda extra / bolão | Comparativo sem/com método (cards lado a lado) |
| Relacionamento / traição | Grid dos sinais (número + emoji + título) + preview blur |
| Saúde / natural | Grid ingredientes + comparativo custo remédio vs produto |
| Finanças | Gráfico de economia / calculadora CSS |
| Emagrecimento | Antes/depois com números (kg, dias) |

---

## Regras de código

- Entregue HTML **completo** — nunca parcial
- `<!-- SUBSTITUA: link checkout -->` em todos os hrefs de checkout
- `<!-- SUBSTITUA: domínio -->` na verificação de domínio
- Máx 2 fontes Google (1 headline + 1 corpo)
- Mobile-first: 375px → 768px → 1024px
- Container: 480 → 680 → 960px
- Tipografia: `clamp()` obrigatório
- `prefers-reduced-motion` implementado
- Ano dinâmico: `new Date().getFullYear()`
- Aviso legal discreto no footer se nicho for saúde

---

## Estruturas especiais

**UPSELL:** headline "Espere — pedido não completo" + 3 bullets + CTA aceitar/recusar. Curta.

**DOWNSELL:** tom empático. Versão reduzida. Preço menor justificado.

**OBRIGADO:** confirmação + como acessar (3 passos) + próximo passo único.

---

## Saída
Salvar em: `operacoes/lowticket/produtos-modelados/[nome-produto]/pagina-vendas.html`

Após página de vendas: "Quer a página de upsell agora?"

## Deploy
```bash
cd operacoes/lowticket/produtos-modelados/[nome-produto]
vercel --prod
```
