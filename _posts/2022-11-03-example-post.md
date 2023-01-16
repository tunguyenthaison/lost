---
title: An Example Post on Syntax 
subtitle: All the related syntax for this blog.
layout: default
date: 2022-11-03
keywords: blogging, writing
published: true
---


- [Math writing using `katex`](#math-writing-using-katex)
- [Citation with `bibtex` style](#citation-with-bibtex-style)
- [Cite theorem in markdown and number equation](#cite-theorem-in-markdown-and-number-equation)
- [Write math using `mathjax`](#write-math-using-mathjax)
- [Writing Theorem using `quote` tag in `html`](#writing-theorem-using-quote-tag-in-html)
- [Link Theorem using pure `html` instead of markdown](#link-theorem-using-pure-html-instead-of-markdown)
- [Latex-like `Theorem` environment `CSS` template](#latex-like-theorem-environment-css-template)
- [Using `mermaid` to plot diagram in markdwn](#using-mermaid-to-plot-diagram-in-markdwn)
- [PDEs notes to learn](#pdes-notes-to-learn)
- [Roadmap](#roadmap)



## Math writing using `katex`
Here are some words. And this is some math:

**Codes:**


```html
   {`%` katexmm `%`}
   Let $\Omega$ be a domain in $\mathbb{R}^n$ and $u\in \mathrm{C}^2(\Omega)$ be a function. 
   $$
   e = mc^2. \tag{1}
   $$
   {`%` endkatexmm `%`}
```


**Result:**

{% katexmm %}
Let $\Omega$ be a domain in $\mathbb{R}^n$ and $u\in \mathrm{C}^2(\Omega)$ be a function. 
$$
e = mc^2. \tag{1}
$$
{% endkatexmm %}

Cool! 

## Citation with `bibtex` style
To cite a book, use 

**Codes** `{`%` cite bishop2006pattern `%`}`

```html
   {`%` cite bishop2006pattern `%`}
```

**Result:**
{% cite bishop2006pattern %}

## Cite theorem in markdown and number equation
**Codes:** 

```latex
   {`%` katexmm `%`}
   \begin{equation}\label{eq:1}
      a = b + c  \tag{1}
   \end{equation}
   Using [Theorem 2](#thm2) and equation \eqref{eq:1}. 
   {`%` endkatexmm `%`}
```


**Result:**
{% katexmm %}
\begin{equation}\label{eq:1}
   a = b + c  \tag{1}
\end{equation}
Using [Theorem 2](#thm2) and equation \eqref{eq:1}. 
{% endkatexmm %}


## Write math using `mathjax` 
**Codes:**
```tex
   \begin{equation}\label{eq:2}
      a = b + c  \tag{2}
   \end{equation}
```
**Result:**
\begin{equation}\label{eq:2}
   a = b + c  \tag{2}
\end{equation}

## Writing Theorem using `quote` tag in `html`
**Codes:**

```tex
   > <a name="thm2">**Theorem 2.**</a> 
   > Let $g\in \mathrm{L}^\infty(\mathbb{R})$ be a periodic function with period $1$. 
   > Let $g_n(x) = g(nx)$ for $n\in \mathbb{N}$ and $g(x)\equiv \int_0^1 g(x)dx$.
   > - (a) $g_n \rightharpoonup g$ weakly in $L^p([0,1])$ for $1\leq p<\infty$.
   > - (b) $g_n \rightharpoonup^* g$ weak$^*$ in $L^\infty([0,1])$.
```
**Result:**

{% katexmm %}
> <a name="thm2">**Theorem 2.**</a> 
> Let $g\in \mathrm{L}^\infty(\mathbb{R})$ be a periodic function with period $1$. Let $g_n(x) = g(nx)$ for $n\in \mathbb{N}$ and $g(x)\equiv \int_0^1 g(x)dx$.
> - (a) $g_n \rightharpoonup g$ weakly in $L^p([0,1])$ for $1\leq p<\infty$.
> - (b) $g_n \rightharpoonup^* g$ weak$^*$ in $L^\infty([0,1])$.
{% endkatexmm %}




## Link Theorem using pure `html` instead of markdown
A way to link Theorem using pure `html` is as follows. Unlike using `markdown` syntax, this way always work even inside the `<details></details>` tags. 

**Code:**
```html
   <span><a href="thm2">Theorem 2</a></span>
```

**Result:**
<span><a href="thm2">Theorem 2</a></span>

## Latex-like `Theorem` environment `CSS` template
**Code:**
```html
   <div class="theorem" text='CLT'>
      The CLT states that, as $n$ goes to infinity, the sample average $\bar{X}$
      converges in distribution to $\mathcal{N}(\mu,\sigma^2/n)$.
   </div>
```
**Result:**
<div class="theorem" text='CLT'>
      The CLT states that, as $n$ goes to infinity, the sample average $\bar{X}$
      converges in distribution to $\mathcal{N}(\mu,\sigma^2/n)$.
</div>

## Using `mermaid` to plot diagram in markdwn


<pre class="mermaid">
graph LR
    A[Mean-value property] --> B[Harnack's inequality]
    A-->C[Local detivative estimates]
    A-->D(Strong max/min principles);
    A-->E(Weak max/min principles);
    A-->F(Smoothness);
</pre>


<div class="mermaid">
graph LR
    A --- B
    B-->C[Happy]
    B-->D(Sad);
</div>

<div class="mermaid">
    graph TD
      B[peace]
      B-->C[fa:fa-ban forbidden]
      B-->D(fa:fa-spinner);
      B-->E(fa:fa-camera-retro perhaps?);
</div>

<div class="mermaid">
    sequenceDiagram
        participant Alice
        participant Bob
        Alice->>John: Hello John, how are you?
        loop Healthcheck
            John->>John: Fight against hypochondria
        end
        Note right of John: Rational thoughts <br/>prevail!
        John-->>Alice: Great!
        John->>Bob: How about you?
        Bob-->>John: Jolly good!
</div>


## PDEs notes to learn

- [x] Green's function derivations
- [x] Green's function for the half-space
- [x] Green's function for the ball 

## Roadmap
- PDEs proeprties derived from the mean-value property of solution (mainly for harmonic functions)
- PDEs properties derived from explicit representations of solution using kernels