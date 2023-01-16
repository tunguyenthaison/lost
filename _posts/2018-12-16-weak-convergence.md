---
title: Convergence in distributions 
subtitle: Weak convergence, or convergence in distributions of random variables
layout: default
date: 2018-12-16
keywords: blogging, writing, math
published: true
---
{% katexmm %}

Given probability measures $\mu_n$, $\mu$ on $\mathbb{R}$, what should it mean for $\mu_n\to \mu$? 
If we requires that $\mu_n(E)\to \mu(E)$ for all Borel set $E\subset \R$ then it is too much to ask for! For example, the function 

$$
    \begin{aligned}
        \delta_x(E) &=  
        \begin{cases}
        1 &\text{if}\;x\in E\\
        0 &\text{if}\;x\notin E
        \end{cases}
    \end{aligned} 
$$

only satisfies $0  =\delta_{\frac{1}{n}}\big((-\infty, 0]\big) \to \delta_0\big((-\infty, 0]\big)= 1$. 

---

<div class="theorem" text='Definition'>

Let $S$ be a metric space, $\{\mu_n\}_{n\geq 1}$ and $\mu$ be Borel probablity measures on $S$. We say $\mu_n \Longrightarrow \mu$ weakly (or in distribution) if 
$$
    \lim_{n\to \infty} \int_S f\;d\mu_n = \int_S f\;d\mu \qquad\forall f\in \mathrm{C}_b(S). 
$$

</div>


{% endkatexmm %}

