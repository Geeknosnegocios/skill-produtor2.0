# skill-frontend — Frontend, UI/UX & Páginas de Venda

Referência técnica de frontend. Carregada obrigatoriamente pelo /AGENTE-PAGINA antes de gerar qualquer HTML.

**OBRIGATÓRIO:** Leia `operacoes/lowticket/briefing-ativo.md` antes de executar qualquer tarefa. Use os dados de nicho, público e identidade visual sugerida do briefing para definir o estilo da página.

---

## PROCESSO DE ANÁLISE VISUAL

### PASSO 1 — IDENTIFICA O NICHO E A PROMESSA
Leia o briefing-ativo.md e classifique:
- Qual é o nicho? (finanças, emagrecimento, renda extra, relacionamento, produtividade, saúde, concursos)
- Qual é a emoção dominante da promessa? (alívio, conquista, pertencimento, urgência, transformação)
- Quem é o público? (iniciante ansioso / intermediário cético / avançado que quer resultado rápido)

### PASSO 2 — ESCOLHE O ESTILO VISUAL
Com base no nicho e emoção, escolhe um dos estilos abaixo e **declara qual escolheu antes de gerar o código**.

---

## ESTILOS VISUAIS POR NICHO

### ESTILO 1 — CLAREZA FINANCEIRA
Usar para: finanças pessoais, organização, planilhas, controle de gastos
Emoção: alívio, controle, segurança

```css
--bg: #f8fafc; --surface: #ffffff; --border: #e2e8f0; --text: #0f172a;
--muted: #64748b; --accent: #0ea5e9; --cta: #16a34a; --cta-rgb: 22,163,74; --danger: #dc2626;
```

Tipografia: Plus Jakarta Sans 700 (headlines) + Inter 400/500 (corpo)
Características: Muito espaço em branco · números em destaque com font-variant-numeric: tabular-nums · ícones de gráfico/dinheiro · depoimentos com foto · selos de segurança visíveis

### ESTILO 2 — TRANSFORMAÇÃO BOLD
Usar para: emagrecimento, fitness, mudança de hábitos, saúde pesada
Emoção: conquista, energia, motivação

```css
--bg: #0a0a0a; --surface: #111111; --border: #222222; --text: #f5f5f5;
--muted: #888888; --accent: #f97316; --cta: #f97316; --cta-rgb: 249,115,22; --highlight: #fbbf24;
```

Tipografia: Bebas Neue ou Syne 700 (headlines) + Roboto 400 (corpo)
Características: Contraste extremo · before/after visual · números grandes (kg, dias) · CTA enorme · urgência visual com borda pulsante

### ESTILO 3 — RENDA & OPORTUNIDADE
Usar para: renda extra, infoprodutos, tráfego pago, marketing digital
Emoção: oportunidade, urgência, prova social

```css
--bg: #0f0f0f; --surface: #1a1a1a; --border: #2a2a2a; --text: #e8e8e8;
--muted: #666666; --accent: #a3e635; --cta: #22c55e; --cta-rgb: 34,197,94; --gold: #f59e0b;
```

Tipografia: Syne 700 (headlines) + JetBrains Mono 400 (números/stats) + Inter 400 (corpo)
Características: Screenshots de resultados · contador de alunos · depoimentos em vídeo placeholder · senso de escassez · tabela de comparação com destaque na coluna recomendada

### ESTILO 4 — CONEXÃO & CONFIANÇA
Usar para: relacionamento, desenvolvimento pessoal, coaching, espiritualidade
Emoção: pertencimento, esperança, conexão

```css
--bg: #fdfcfb; --surface: #ffffff; --border: #e8e0d8; --text: #2d1b0e;
--muted: #8b7355; --accent: #d97706; --cta: #b45309; --cta-rgb: 180,83,9; --soft: #fef3c7;
```

Tipografia: Playfair Display 700 (headlines) + Lora 400 (corpo)
Características: Foto do autor/produto em destaque · tom empático · depoimentos emocionais · garantia proeminente · sem pressão excessiva

### ESTILO 5 — AUTORIDADE TÉCNICA
Usar para: concursos, idiomas, estudos, tecnologia, certificações
Emoção: confiança, credibilidade, método

```css
--bg: #ffffff; --surface: #f8f9fa; --border: #dee2e6; --text: #212529;
--muted: #6c757d; --accent: #0d6efd; --cta: #198754; --cta-rgb: 25,135,84; --warning: #ffc107;
```

Tipografia: IBM Plex Sans 600 (headlines) + Source Serif 4 400 (corpo)
Características: Estrutura clara de módulos · lista de conteúdo do produto · credenciais do autor · aprovação/reprovação como gatilho · depoimentos com resultado específico

---

## PASSO 3 — ESTRUTURA DA PÁGINA DE VENDAS (10 seções)

```
1. HERO
   - Badge de urgência/escassez acima da headline (opcional)
   - Headline principal (acima da dobra em mobile 375px)
   - Subheadline (1 linha — qualifica público ou expande mecanismo)
   - CTA primário visível sem scroll
   - Imagem/mockup do produto (ver PASSO 3B — IMAGENS)

2. BARRA DE PROVA SOCIAL
   - Números: "+X alunos" / "X resultados" / "X dias no ar"
   - Formato: 3 colunas, fonte mono, números grandes

3. PROBLEMA
   - 3 dores específicas do público (cards ou lista com ícone)
   - Linguagem espelho (fala como o público fala)
   - Fundo --surface para quebrar ritmo visual

4. SOLUÇÃO
   - O que é o produto em 1 parágrafo
   - Como funciona: 3 passos numerados (ícone + título + descrição curta)
   - Cada passo em card com hover sutil

5. PROVA
   - 3 depoimentos: nome, resultado específico e prazo
   - Cards com aspas estilizadas e borda accent

6. OFERTA
   - O que inclui (lista com check verde — anima no scroll)
   - Preço riscado + preço real (grande, accent)
   - "Você economiza R$XX" em destaque
   - Selo de pagamento seguro

7. GARANTIA
   - Prazo + condição clara
   - Ícone escudo/cadeado
   - Background accent com opacity 0.05 + borda accent à esquerda

8. CTA FINAL
   - Headline curta
   - Botão CTA grande com pulso
   - Microcopy abaixo: "Acesso imediato"

9. FAQ
   - 4-6 perguntas em accordion (details/summary — CSS only)
   - Perguntas que quebram objeções reais do nicho

10. FOOTER MÍNIMO
    - Marca, termos, privacidade
    - Ano dinâmico: new Date().getFullYear()
```

---

## PASSO 3B — IMAGENS E GANCHOS VISUAIS (OBRIGATÓRIO)

Páginas sem imagens convertem menos. Todo AGENTE-PAGINA deve incluir imagens reais ou placeholders visuais funcionais em cada seção crítica.

### ONDE USAR IMAGENS

**Hero — mockup do produto:**
```html
<!-- Opção A: imagem real via Pollinations (gera automaticamente) -->
<img src="https://image.pollinations.ai/prompt/[prompt-codificado]?width=600&height=400&nologo=true"
     alt="[nome do produto]" width="600" height="400" loading="eager" fetchpriority="high">

<!-- Opção B: mockup CSS puro (quando não há imagem disponível) -->
<div class="produto-mockup">
  <div class="mockup-cover">
    <span class="mockup-icon">[emoji do nicho]</span>
    <h3>[Nome do produto]</h3>
    <p>[Subtítulo]</p>
  </div>
</div>
```

**Depoimentos — avatar do cliente:**
```html
<!-- Avatar gerado via UI Avatars (sem rastreamento) -->
<img src="https://ui-avatars.com/api/?name=[Nome]+[Sobrenome]&background=[cor-hex-sem-#]&color=fff&size=64&bold=true&rounded=true"
     alt="Foto de [Nome]" width="64" height="64" loading="lazy">
```

**Seção antes/depois (emagrecimento, saúde, finanças):**
```html
<div class="before-after">
  <div class="ba-side ba-before">
    <span class="ba-label">ANTES</span>
    <img src="https://ui-avatars.com/api/?name=Antes&background=dc2626&color=fff&size=120&bold=true"
         alt="Situação antes do produto" width="120" height="120" loading="lazy">
    <p>[descrição do estado anterior]</p>
  </div>
  <div class="ba-arrow">→</div>
  <div class="ba-side ba-after">
    <span class="ba-label">DEPOIS</span>
    <img src="https://ui-avatars.com/api/?name=Depois&background=16a34a&color=fff&size=120&bold=true"
         alt="Resultado após o produto" width="120" height="120" loading="lazy">
    <p>[descrição do resultado]</p>
  </div>
</div>
```

**Ícones de seção (SVG inline — sem dependência externa):**
```html
<!-- Escudo (garantia) -->
<svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
  <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/>
</svg>

<!-- Check (benefícios) -->
<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
  <polyline points="20 6 9 17 4 12"/>
</svg>

<!-- Cadeado (segurança/pagamento) -->
<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <rect x="3" y="11" width="18" height="11" rx="2" ry="2"/>
  <path d="M7 11V7a5 5 0 0 1 10 0v4"/>
</svg>
```

**Selos de pagamento (SVG inline):**
```html
<div class="payment-seals">
  <span class="seal">🔒 SSL</span>
  <span class="seal">✓ Kiwify</span>
  <span class="seal">💳 Pix · Cartão · Boleto</span>
</div>
```

### GANCHOS VISUAIS POR NICHO

**Renda Extra / Copa / Oportunidade:**
- Screenshot de placar/resultado em card com borda accent (mockup SVG)
- Contador de pessoas que já compraram (número animado no scroll)
- Gráfico simples ASCII/CSS mostrando progressão

**Relacionamento / Traição:**
- Ícones de comportamento (🔍 👁️ 📱 💬) em cards visuais
- Checklist visual preenchível (CSS only, sem JS)
- Onda emocional (degradê suave de vermelho para verde = da dúvida à clareza)

**Saúde / Natural:**
- Ícones de ingredientes (🧄 🍋 🫚 🌿) em grid visual
- Comparativo de custo: card "Remédio: R$300/mês" vs card "Farmácia Caseira: R$9,90" com cores contrastantes
- Barra de progresso animada mostrando economia mensal

### REGRAS DE IMAGEM
- Hero: sempre `loading="eager" fetchpriority="high"` — nunca lazy
- Demais: `loading="lazy"` + `width` e `height` declarados (evita CLS)
- Alt descritivo em todas as imagens
- Nunca `<img>` sem fallback — se Pollinations falhar, mostrar mockup CSS
- Usar `onerror` para fallback: `onerror="this.style.display='none'"`

---

## PASSO 4 — SISTEMA DE INTERATIVIDADE E ANIMAÇÕES

### SCROLL REVEAL (sem biblioteca externa)
```html
<script>
const observer = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.classList.add('visible');
      observer.unobserve(entry.target);
    }
  });
}, { threshold: 0.15 });
document.querySelectorAll('.reveal').forEach(el => observer.observe(el));
</script>
```
```css
.reveal { opacity: 0; transform: translateY(24px); transition: opacity 0.6s ease, transform 0.6s ease; }
.reveal.visible { opacity: 1; transform: translateY(0); }
.reveal-delay-1 { transition-delay: 0.1s; }
.reveal-delay-2 { transition-delay: 0.2s; }
.reveal-delay-3 { transition-delay: 0.3s; }
```

### BOTÃO CTA — pulso + hover
```css
.cta-btn {
  position: relative; display: inline-flex; align-items: center; justify-content: center;
  min-height: 56px; padding: 16px 32px; font-size: 18px; font-weight: 700;
  letter-spacing: 0.02em; text-transform: uppercase; text-decoration: none;
  color: #fff; background: var(--cta); border: none; border-radius: 8px; cursor: pointer;
  transition: transform 0.2s ease, box-shadow 0.2s ease; animation: pulse 2.5s infinite;
}
.cta-btn:hover { transform: translateY(-2px); box-shadow: 0 8px 24px rgba(0,0,0,0.25); animation: none; }
.cta-btn:active { transform: translateY(0); }
@keyframes pulse {
  0%, 100% { box-shadow: 0 0 0 0 rgba(var(--cta-rgb), 0.4); }
  50% { box-shadow: 0 0 0 12px rgba(var(--cta-rgb), 0); }
}
```

### CARDS — hover lift
```css
.card {
  background: var(--surface); border: 1px solid var(--border); border-radius: 12px; padding: 24px;
  transition: transform 0.25s ease, box-shadow 0.25s ease;
}
.card:hover { transform: translateY(-4px); box-shadow: 0 12px 32px rgba(0,0,0,0.12); }
```

### FAQ ACCORDION (CSS only)
```css
details { border-bottom: 1px solid var(--border); padding: 16px 0; }
details summary { cursor: pointer; font-weight: 600; font-size: 16px; list-style: none; display: flex; justify-content: space-between; align-items: center; }
details summary::-webkit-details-marker { display: none; }
details summary::after { content: '+'; font-size: 20px; font-weight: 300; transition: transform 0.3s ease; }
details[open] summary::after { transform: rotate(45deg); }
details .faq-body { padding: 12px 0 4px; color: var(--muted); line-height: 1.6; }
```

### CONTADOR DE URGÊNCIA
```html
<div class="countdown" id="countdown">
  <span id="hours">23</span>h <span id="minutes">59</span>m <span id="seconds">59</span>s
</div>
<script>
(function(){
  var total = 86399;
  var h = document.getElementById('hours'), m = document.getElementById('minutes'), s = document.getElementById('seconds');
  setInterval(function(){
    if(total <= 0) return; total--;
    h.textContent = String(Math.floor(total/3600)).padStart(2,'0');
    m.textContent = String(Math.floor((total%3600)/60)).padStart(2,'0');
    s.textContent = String(total%60).padStart(2,'0');
  }, 1000);
})();
</script>
```

### NÚMERO ANIMADO (contador scroll-triggered)
```html
<span class="count-up" data-target="312">0</span>
<script>
document.querySelectorAll('.count-up').forEach(el => {
  const obs = new IntersectionObserver(entries => {
    if (!entries[0].isIntersecting) return;
    const target = +el.dataset.target, duration = 1500, step = target / (duration / 16);
    let current = 0;
    const timer = setInterval(() => {
      current = Math.min(current + step, target);
      el.textContent = Math.floor(current).toLocaleString('pt-BR');
      if (current >= target) clearInterval(timer);
    }, 16);
    obs.unobserve(el);
  }, { threshold: 0.5 });
  obs.observe(el);
});
</script>
```

### CTA STICKY MOBILE
```css
.cta-sticky {
  position: fixed; bottom: 0; left: 0; right: 0;
  padding: 12px 20px; padding-bottom: calc(12px + env(safe-area-inset-bottom));
  background: var(--bg); border-top: 1px solid var(--border);
  z-index: 50; transform: translateY(100%); transition: transform 0.3s ease;
}
.cta-sticky.show { transform: translateY(0); }
@media (min-width: 768px) { .cta-sticky { display: none; } }
```
```html
<script>
(function(){
  var sticky = document.querySelector('.cta-sticky');
  if (!sticky) return;
  var hero = document.querySelector('.hero, #hero');
  var obs = new IntersectionObserver(function(entries){
    sticky.classList.toggle('show', !entries[0].isIntersecting);
  }, { threshold: 0 });
  obs.observe(hero);
})();
</script>
```

---

## PASSO 5 — MOBILE-FIRST

### BREAKPOINTS
```css
/* Mobile base: 0–479px (sem media query) */
@media (min-width: 480px) { }
@media (min-width: 768px) { }
@media (min-width: 1024px) { }
@media (min-width: 1280px) { }
```

### CONTAINER
```css
.container { width: 100%; max-width: 480px; margin: 0 auto; padding: 0 20px; }
@media (min-width: 768px) { .container { max-width: 680px; } }
@media (min-width: 1024px) { .container { max-width: 960px; padding: 0 40px; } }
```

### TIPOGRAFIA RESPONSIVA
```css
:root {
  --h1: clamp(28px, 6vw, 52px); --h2: clamp(22px, 4.5vw, 36px);
  --h3: clamp(18px, 3.5vw, 24px); --body: clamp(15px, 2.5vw, 18px); --small: clamp(12px, 2vw, 14px);
}
h1 { font-size: var(--h1); line-height: 1.1; }
h2 { font-size: var(--h2); line-height: 1.2; }
h3 { font-size: var(--h3); line-height: 1.3; }
body { font-size: var(--body); line-height: 1.6; }
```

### GRIDS ADAPTATIVOS
```css
.grid-cards { display: grid; grid-template-columns: 1fr; gap: 16px; }
@media (min-width: 768px) { .grid-cards { grid-template-columns: repeat(2, 1fr); gap: 20px; } }
@media (min-width: 1024px) { .grid-cards { grid-template-columns: repeat(3, 1fr); gap: 24px; } }

.stats-bar { display: flex; flex-direction: column; gap: 16px; text-align: center; }
@media (min-width: 768px) { .stats-bar { flex-direction: row; justify-content: center; gap: 48px; } }
```

### SEÇÕES
```css
section { padding: 48px 0; }
@media (min-width: 768px) { section { padding: 64px 0; } }
@media (min-width: 1024px) { section { padding: 80px 0; } }
```

### HERO LAYOUT DESKTOP
```css
@media (min-width: 1024px) {
  .hero-inner { display: flex; align-items: center; gap: 48px; }
  .hero-content { flex: 1; }
  .hero-img { max-width: 440px; flex-shrink: 0; }
}
```

### TOUCH TARGETS
```css
a, button, summary, .cta-btn { min-height: 44px; }
```

---

## PASSO 6 — PADRÕES TÉCNICOS OBRIGATÓRIOS

### HTML
- `lang="pt-BR"`
- Meta tags: charset, viewport, og:title, og:description, og:image
- Google Fonts via `<link rel="preconnect">` + `<link href>`
- CSS no `<head>`, JS antes do `</body>`
- Tags semânticas: `<header>`, `<main>`, `<section>`, `<footer>`

### CSS GLOBAL
```css
*, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
html { scroll-behavior: smooth; scroll-padding-top: 20px; }
body { -webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale; }
img { max-width: 100%; height: auto; display: block; }
```

### PERFORMANCE
- `loading="lazy"` em imagens (exceto hero)
- `loading="eager" fetchpriority="high"` no hero
- `<link rel="preconnect">` para fonts.googleapis.com e fonts.gstatic.com
- Imagens com `width` e `height` para evitar CLS

### ACESSIBILIDADE
- Contraste mínimo 4.5:1 (AA)
- `alt` descritivo em todas as imagens
- `outline: 2px solid var(--accent); outline-offset: 2px` no focus
- `@media (prefers-reduced-motion: reduce) { *, *::before, *::after { animation-duration: 0.01ms !important; transition-duration: 0.01ms !important; } }`

### PLACEHOLDERS PADRONIZADOS
```html
<!-- SUBSTITUA: link do checkout -->
<!-- SUBSTITUA: URL da imagem do produto -->
<!-- SUBSTITUA: foto do depoimento -->
<!-- SUBSTITUA: nome e resultado do depoimento -->
<!-- SUBSTITUA: número real de alunos/clientes -->
```

---

## REGRAS FINAIS
- Máximo 2 variações de CTA por página
- Máximo 2 fontes (1 headline + 1 corpo)
- Seções alternadas: --bg e --surface para ritmo visual
- Depoimentos: nunca genéricos — resultado + prazo
- Preço: `font-variant-numeric: tabular-nums`

---

## CHECKLIST ANTES DE ENTREGAR
- [ ] Estilo escolhido declarado explicitamente
- [ ] Paleta aplicada no :root (incluindo --cta-rgb)
- [ ] Hero com CTA acima da dobra no mobile (375px)
- [ ] Imagem/mockup no hero (Pollinations ou CSS puro)
- [ ] Avatares nos depoimentos (ui-avatars.com)
- [ ] Ganchos visuais do nicho presentes (ícones, comparativos, antes/depois)
- [ ] Scroll reveal em seções e cards
- [ ] Contador animado (.count-up) na barra de prova social
- [ ] CTA com animação de pulso
- [ ] CTA sticky no mobile (aparece após scroll do hero)
- [ ] FAQ accordion funcional (details/summary)
- [ ] Tipografia responsiva com clamp()
- [ ] Breakpoints: mobile base > 768px > 1024px
- [ ] Container com max-width por breakpoint
- [ ] Placeholders marcados com comentário padronizado
- [ ] Touch targets 44px mínimo
- [ ] prefers-reduced-motion implementado
- [ ] Google Fonts com preconnect
- [ ] Semântica HTML (header, main, section, footer)
- [ ] Funciona em 375px (iPhone SE) e 1440px (desktop)
