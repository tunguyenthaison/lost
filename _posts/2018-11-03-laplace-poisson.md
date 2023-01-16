---
title: Laplace and Poisson equations
subtitle: Some expository on basic linear elliptic equations, this note is served as a road map to identify similar patterns for general linear elliptic equations later. 
layout: default
date: 2018-11-03
keywords: blogging, writing, pde, math
published: true
---

<!-- Here are some words. And this is some math:

{% katexmm %}
Let $\Omega$ be a domain in $\mathbb{R}^n$ and $u\in \mathrm{C}^2(\Omega)$ be a function. 
$$
e = mc^2. \tag{1}
$$
{% endkatexmm %}

Cool! -->


{% katexmm %}
The basic properties of solution to a Laplace equation $\Delta u = 0$, i.e., a harmonic function can be summarized as follows.

- [Mean value properties and direct consequences](#mean-value-properties-and-direct-consequences)
  - [The mean value property](#the-mean-value-property)
  - [Consequences](#consequences)
    - [Strong max/min principles (from mean-value)](#strong-maxmin-principles-from-mean-value)
    - [Harnack inequality (from mean-value)](#harnack-inequality-from-mean-value)
    - [Interior derivative estimates (from mean-value)](#interior-derivative-estimates-from-mean-value)
- [Green's function and representations](#greens-function-and-representations)
  - [The fundamental solution](#the-fundamental-solution)
  - [Poisson integral formula in the whole space](#poisson-integral-formula-in-the-whole-space)
  - [Green's function](#greens-function)
  - [Consequences](#consequences-1)
    - [Strong max/min principle (from integral representation)](#strong-maxmin-principle-from-integral-representation)
    - [Harnack inequality (from integral representation)](#harnack-inequality-from-integral-representation)
    - [Interior derivative estimates (from integral representation)](#interior-derivative-estimates-from-integral-representation)
- [The Perron's method of subharmonic functions](#the-perrons-method-of-subharmonic-functions)

## Mean value properties and direct consequences

### The mean value property

Let $\Omega$ be a domain in $\mathbb{R}^n$ and $u\in \mathrm{C}^2(\Omega)$ be a function. 

> A function $u\in \mathrm{C}^2(\Omega)$ is called *harmonic, subharmonic, superharmonic* in $\Omega$ if there holds, $-\Delta u = 0, -\Delta u \leq 0, -\Delta u \geq 0$ in $\Omega$, respectively.

Harmonic function satisfies the mean-value property, in the sense that 
$$ 
    u(x_0) = \frac{1}{n\alpha(n)r^{n-1}}\int_{\partial B(x_0,r)} u(x)\,dS(x) , \qquad  B(x_0,r)\subset \Omega,
$$ 
where $\alpha(n)$ is the volume of the unit ball in $\mathbb{R}^n$, and $n\alpha(n)$ is the surface area of the unit sphere in $\mathbb{R}^n$. By integration we can see that the mean value integral can be taken on the ball instead of the surface as 
$$
    \begin{aligned}
        \frac{1}{\alpha(n)r^n}\int_{B(x_0,r)} u(x)\,dx &=  \frac{1}{\alpha(n)r^n}\int_0^r \left(\int_{\partial B(x_0,s)} u(x)\,dS(x) \right)ds\\
                            &=  \frac{1}{\alpha(n)r^n}\int_0^r \Big( n\alpha(n)r^{n-1}u(x_0) \Big)ds =  u(x_0).
    \end{aligned} 
$$

### Consequences

#### Strong max/min principles (from mean-value)

#### Harnack inequality (from mean-value)

#### Interior derivative estimates (from mean-value)

## Green's function and representations

### The fundamental solution
By looking for a radial symmetric solution we find the fundamental solution of $\Delta u = 0$ is given by
$$
    \Phi(x) = 
    \begin{cases}
    \begin{aligned}
        &-\frac{1}{2\pi}\log(|x|),                      &\qquad n = 2,\\
        &\frac{1}{n(n-2)\alpha(n)} \frac{1}{|x|^{n-2}}, &\qquad n \geq 3.\\
    \end{aligned}
    \end{cases}
$$
We observe that 
$$ 
    |D\Phi(x)| \leq \frac{C}{|x|^{n-1}} \qquad\text{and}\qquad |D^2\Phi(x)|  \leq \frac{C}{|x|^{n}}.
$$
We note that in $\mathbb{R}^n$ we have
$$
    \int_{B(0,r)} \frac{dx}{|x|^\alpha} = n\alpha(n) \left(\frac{s^{n-\alpha}}{n-\alpha}\right)\Bigg|_{s=0}^{s=r} < \infty \qquad \Longleftrightarrow \qquad n > \alpha.  
$$
We thus observe that $D^2\Phi(x)$ is not integrable near the singularity $x = 0$, but $\Phi(x),D\Phi(x)$ are fine. A notable property of the fundamental solution is, along $\partial B(0,\varepsilon)$ with inward unit normal vector we have
$$
    D\Phi(x)\cdot \nu(x) = \frac{1}{n\alpha(n)}\left(-\frac{1}{|x|^{n-1}}\right)\frac{x}{|x|}\cdot \left(-\frac{x}{|x|}\right) = \frac{1}{n\alpha(n)\varepsilon^{n-1}}
$$


and thus as a consequence

$$
\begin{aligned}
    \lim_{\varepsilon \to 0} \int_{\partial B(0,\varepsilon)} f(x) \frac{\partial \Phi}{\partial \nu}(x)\;dS(x) = f(0) \tag{1}
\end{aligned}
$$

if $f$ is continuous.


In what follows, we will:
  - use the fundamental solution $\Phi$ to build a solution to the Poisson's equation in $\mathbb{R}^n$ with compactly supported data $f\in \mathrm{C}_c^2(\mathbb{R}^n)$ using convolution.
  - idea on solving Laplace equation on bounded domain, which motivates Green's functions.

### Poisson integral formula in the whole space
> **Theorem.** Assume $f\in \mathrm{C}_c^2(\mathbb{R}^n)$, then $u = \Phi*f \in \mathrm{C}^2(\mathbb{R}^n)$ and $-\Delta u = f$ in $\R^n$.
> 
 $$\fbox{$\displaystyle u(x) = \int_{\R^n} \Phi(x-y)f(y)\;dy.$}$$
 

**Proof.** We easily compute $\Delta u = \Phi*\Delta f$, to compute its value, we need to take care of the singularity before we can move the Laplacian to $\Phi$. We have 

$$
    \Delta u(x) = \underbrace{\int_{B(0,\varepsilon)} \Phi(y)\Delta f(x-y)\;dy}_{I_\varepsilon} + \underbrace{\int_{\mathbb{R}^n - B(0,\varepsilon)} \Phi(y)\Delta f(x-y)\;dy}_{J_\varepsilon} .
$$
Note that
$$
    |I_\varepsilon|\leq \Vert D^2f \Vert_{L^\infty} \int_{B(0,\varepsilon)} \Phi(y)dy \to 0 \qquad \text{as}\qquad \varepsilon \to 0
$$
using the definition of $\Phi$. For $J_\varepsilon$, the Green's formula gives us 
$$
\begin{aligned}
    &\int_{\mathbb{R}^n - B(0,\varepsilon)} \Big(\Phi(y)\Delta f(x-y) - f(x-y)\Delta \Phi(y)\Big)\;dy \\
    &\qquad\qquad\qquad = \int_{\partial B(0,\varepsilon)} \Big(\Phi(y)Df(x-y)\cdot \nu(y) - f(x-y)D\Phi(y)\cdot \nu(y)\Big)\;dS(y)
\end{aligned}
$$
where $\nu(x) = -\varepsilon^{-1}x$ is the unit *inward* normal vector to $\partial B(0,\varepsilon)$. Now we note that $\Delta \Phi(y) = 0$ in $\mathbb{R}^n-B(0,\varepsilon)$ and 
$$
\begin{aligned}
    &D\Phi(y)\cdot \nu(y) = \frac{1}{n\alpha(n)} \frac{1}{|y|^{n-1}} \frac{y}{|y|} \cdot \left(-\frac{y}{\varepsilon}\right) = -\frac{1}{n\alpha(n)\varepsilon^{n-1}}, \qquad y\in \partial B(0,\varepsilon),\\
    &\qquad\qquad\qquad\qquad\qquad\left|\int_{\partial B(0,\varepsilon)}\Phi(y)\cdot \nu(y) dS(y)\right| \to 0 \qquad \text{as}\qquad \varepsilon \to 0. 
\end{aligned}
$$
Therefore 
$$
    J_\varepsilon = -\frac{1}{n\alpha(n)\varepsilon^{n-1}}\int_{\partial B(0,\varepsilon)} f(x-y)\;dS(y) + \mathcal{O}(\varepsilon) \to -f(x)
$$
as $\varepsilon \to 0$, which completes the proof. 

### Green's function
Consider the problem in a domain $\Omega\subset \mathbb{R}^n$ as follows
$$
    \begin{cases}
    \begin{aligned}
        -\Delta u &= f \qquad \text{in}\;\Omega,\\
                u &= g \qquad \text{on}\;\partial\Omega.
    \end{aligned}
    \end{cases}
$$ 
A Green function $G(x,y)$ on a domain $\Omega$ is a function from which one can solve the Poisson problem on domain $\Omega$ by
$$
\begin{aligned}
\fbox{$\displaystyle
        u(x) = -\int_\Omega G(x,y)\Delta u(y)dy - \int_{\partial\Omega} u(y)\frac{\partial_y G(x,y)}{\partial \nu}dS(y).
$} 
\end{aligned}
$$
The Green's function can be found for simple domains, mostly the ball and the half-space. For a general domain $\Omega$ there are a couple of methods, mainly 

- Variational or Hilbert space approach
- The Perron's method of subharmonic functions

In this section we derive the Green's function for the ball and use it to re-derive properties that were derived by the mean-value property, as it can be used as a framework for problems where such a mean-value propery is not available.

<details>

Using Green's identity with $V_\varepsilon = \Omega - B(x,\varepsilon)$ we have 
$$
    \begin{aligned}
        &\int_{V_\varepsilon} \Big(u(y)\Delta \Phi(x-y) - \Phi(x-y)\Delta u(y)\Big)dy \\
        &\qquad\qquad = \int_{\partial V_\varepsilon}\left(u(y)\frac{\partial \Phi}{\partial \nu}(x-y) - \Phi(x-y)\frac{\partial u}{\partial \nu}(y)\right)dS(y).
    \end{aligned}
$$

On $\partial B(0,\varepsilon)$ the normal vector is again the inward unit normal $\nu(y) = - \varepsilon^{-1}y$ to $B(x,\varepsilon)$. Thus 
$$
\begin{aligned}
    \int_{\partial B(x,\varepsilon)}\left(u(y)\frac{\partial \Phi}{\partial \nu}(x-y) - \Phi(x-y)\frac{\partial u}{\partial \nu}(y)\right)dS(y) = u(x) + \mathcal{O}(\varepsilon)
\end{aligned}
$$
using $(1)$. Together with $\Delta \Phi(x-y) = 0$ in $V_\varepsilon$ we obtain
$$
    \begin{aligned}
        \displaystyle
        u(x) &= -\int_\Omega \Delta u(y)\Phi(x-y)dy - \int_{\partial\Omega}\left(u(y)\frac{\partial \Phi}{\partial \nu}(x-y) - \Phi(x-y)\frac{\partial u}{\partial \nu}(y)\right)dS(y)  \\
        &= -\int_\Omega \Delta u(y)\Phi(x-y)dy + \int_{\partial\Omega}\left(\Phi(x-y)\frac{\partial u}{\partial \nu}(y) -u(y)\frac{\partial \Phi}{\partial \nu}(x-y) \right)dS(y) . \tag{2}
    \end{aligned}
$$
To resolve the unknown $\frac{\partial u}{\partial \nu}$ on $\partial \Omega$, we introduce the *corrector* $\phi^x(y)$ that solves for $y\in \Omega$ the problem
$$
    \begin{cases}
    \begin{aligned}
        -\Delta \phi^x(y) &= 0 &\qquad &\text{in}\;\Omega,\\
                \phi^x(y) &= \Phi(x-y) &\qquad &\text{on}\;\partial\Omega.
    \end{aligned}
    \end{cases}
$$
The idea is to make the term 
$$ 
    \int_{\partial \Omega} \Phi(x-y)\frac{\partial u}{\partial v}(y)\;dS(y)
$$
appears again. Using Green's formula again we have
$$
    \begin{aligned}
    &\int_\Omega \Big( u(y)\Delta \phi^x(y) - \phi^x(y)\Delta u(y) \Big)dy \\
    &\qquad\qquad\qquad\qquad = \int_{\partial\Omega} \left(u(y)\frac{\partial \phi^x}{\partial \nu}(y) - \phi^x(y)\frac{\partial u}{\partial \nu}(y)\right)dS(y).
    \end{aligned}
$$
Using $\phi^x(y) = \Phi(x-y)$ for $y\in \partial\Omega$ we have
$$
    \begin{aligned}
    &0 = \int_\Omega \phi^x(y)\Delta u(y) dy 
    +\int_{\partial\Omega} \left( - \Phi(x-y)\frac{\partial u}{\partial \nu}(y) + u(y)\frac{\partial \phi^x}{\partial \nu}(y)\right)dS(y). \tag{3}
    \end{aligned}
$$
From $(2)$ and $(3)$ we obtain
$$
    \begin{aligned}
        u(x) = -\int_\Omega \big(\Phi(x-y) -\phi^x(y)\Big)\Delta u(y )dy - \int_{\partial\Omega} u(y)\frac{\partial_y\left(\Phi(x-y) - \phi^x(y)\right)}{\partial \nu}dS(y). \tag{4}
    \end{aligned}
$$
We call 
$$
    G(x,y): = \Phi(x - y) - \phi^x(y)
$$

a Green function. In this case we obtain $(4)$ as 
$$
\begin{aligned}
\fbox{$\displaystyle
        u(x) = -\int_\Omega G(x,y)\Delta u(y)dy - \int_{\partial\Omega} u(y)\frac{\partial_y G(x,y)}{\partial \nu}dS(y).
$} 
\end{aligned}
$$



<summary> Derivation </summary>

</details>

### Consequences

#### Strong max/min principle (from integral representation)

#### Harnack inequality (from integral representation)

#### Interior derivative estimates (from integral representation)


## The Perron's method of subharmonic functions
This method relies heavily on:

    - *the maximum principle*
    - *the solvability of the Dirichlet problem in a ball*.


{% cite bishop2006pattern %}
{% endkatexmm %}