---
title: Introduction to Optimal Transport
subtitle: Very light introduction on the subject
layout: default
date: 2022-11-09
keywords: blogging, writing
published: true
---

- [Lecture 1 - Basic Introduction](#lecture-1---basic-introduction)
  - [Basic Notions](#basic-notions)
    - [Push-forward measures](#push-forward-measures)
  - [Issues with Monge's formulation](#issues-with-monges-formulation)
    - [The class of admissible transport maps is not closed in the weak topology](#the-class-of-admissible-transport-maps-is-not-closed-in-the-weak-topology)

## Lecture 1 - Basic Introduction
We start by defining some notations and preliminaries results. 

{% katexmm %}
- In a metric space $(X,d)$ we denote $\mathcal{B}(X)$ the Borel $\sigma$-algebra and $\mathcal{M}(X), \mathcal{M}_+(X), \mathcal{P}(X)$ the set of all measures, positive measures, and probability measures respectively.
- The Lebesgue measure in $\mathbb{R}^n$ is denoted by $\mathcal{L}^n$.
- The *characteristic* $\chi_E:X\to \{0,1\}$ is defined by $\chi_E(x) = 1$ if $x\in E$ and $\chi_E(x) = 0$ if $x\notin E$.
- The (infinity) *indicator* $\mathbb{1}_E$ is defined by $\mathbb{1}_E(x) = 0$ if $x\in E$ and $\mathbb{1}_E(x) = +\infty$ if $x\notin E$.


### Basic Notions

#### Push-forward measures

> **Definition** Given a Borel function $f:X\to Y$, the push-forward $f_\#: \mathcal{M}(X)\to \mathcal{M}(Y)$

### Issues with Monge's formulation

#### The class of admissible transport maps is not closed in the weak topology 

We consider the following example to illustrate this point. Let $\mu = \mathcal{L}^1|_{[0,1]}$ and $\nu = \frac{1}{2} \left(\delta_{+1} + \delta_{-1}\right)$. Let $f:\mathbb{R}\to \mathbb{R}$ be the $1$-periodic function such that 
$$
    f(x) = 
    \begin{cases}
        +1 &\qquad \text{if}\; x\in \left[0,\frac{1}{2}\right),\\
        -1 &\qquad \text{if}\; x\in \left[\frac{1}{2}, 1\right).
    \end{cases}
$$
For $h\in \mathbb{N}-\{0\}$ we define $T_h(x) = f(hx)$, then $T_h$ is a transport map such that $(T_h)_\#\mu = \nu$ since 
$$
    \int_{[0,1]} \phi(T_h(x))\, dx =  \frac{\phi(+1)+\phi(-1)}{2}=\int_{[0,1]} \phi\;d\nu, \qquad \phi\in \mathrm{C}([0,1]). 
$$
We observe that $T_h\rightharpoonup T = \int_0^1 f(x)dx = 0$ weak$^*$ in $L^p([0,1])$ for all $1\leq p <\infty$ [^1].

<details>
<summary> Theorem

</summary>
</details>

{% endkatexmm %}

[^1]: My reference.