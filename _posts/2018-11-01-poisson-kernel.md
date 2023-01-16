---
title: Poisson's kernel for the half-space and unit ball
subtitle: Detailed derivations of the Possion's kernel in the upper half-space and the unit ball
layout: default
date: 2018-11-03
keywords: blogging, writing, pde, math
published: true
---

{% katexmm %}
Let $\Omega$ be an open, bounded subset of $\mathbb{R}^n$ with $\mathrm{C}^2$ boundary. We recall that, if we assume a solution $u\in \mathrm{C}^2(\overline{\Omega})$ exists for 



$$
    \begin{cases}
    \begin{aligned}
        -\Delta  u &= 0  & &\qquad\text{in}\;\Omega,\\
                    u &= g  & &\qquad\text{on}\;\partial\Omega
    \end{aligned}
    \end{cases} \tag{1}
$$


then for every $x\in \Omega$, if we solve for $\phi^x(\cdot)$ the solution to 

$$
\begin{cases}
    \begin{aligned}
    -\Delta  \phi^x(y) &= 0  & &\qquad y\in \Omega,\\
             \phi^x(y) &= \Phi(x-y)  & &\qquad y\in \partial\Omega
    \end{aligned}
\end{cases} \tag{2}
$$

where $\Phi(x)$ is the fundamental solution to the Laplace equation $-\Delta \Phi = \delta_0$ in $\mathbb{R}^n$. Then the Green function is given by $G(x,y) = \Phi(y-x) - \phi^x(y)$. 

If we assume $u\in \mathrm{C}^2(\overline{\Omega})$ then all the derivations are rigorous, therefore we have the following theorem. 

<div class="theorem" text='Theorem 1' name="thm1" > If $\Omega$ is an open, bounded subset with $\mathrm{C}^2$ boundary and $u\in\mathrm{C}^2(\overline{\Omega})$ then
$$
    u(x) = -\int_{\partial \Omega} g(y)\frac{\partial_yG(x,y)}{\partial\nu} dS(y), \qquad x\in \Omega
$$
where $\nu$ is the unit outward normal vector on the boundary $\partial \Omega$.    
</div>


{% endkatexmm %}


## Poisson's kernel for the half-space

## Poisson's kernel for the unit ball

