---
title: Weak convergence of oscilating functions 
subtitle: Some weak convergence results of periodic functions in one dimension
layout: default
date: 2018-06-15
keywords: blogging, writing
published: true
---

- [Weak convergence of oscillating functions](#weak-convergence-of-oscillating-functions)
- [Uniform integrability, Equi-integrability and Dunford-Pettis Theorem](#uniform-integrability-equi-integrability-and-dunford-pettis-theorem)



## Weak convergence of oscillating functions

{% katexmm %}
> <a name="thm1">**Theorem 1.**</a> 
> Let $g\in L^\infty(\mathbb{R})$ be a periodic function with period $1$, $f:[0,1]\to \mathbb{R}$ be a continuous function, then
> $$
    \lim_{n\to \infty} \int_0^1 f(x)g(nx)\;dx = \left(\int_0^1 f(x)dx\right)\left(\int_0^1 g(x)dx\right). $$



<details>

<summary> Proof. </summary> In what follows we write the integral means Lebesgue integral, and note that it coincides with Riemann integral if the set of discontinuous points of a function is of measure zero, for example $f$ is continuous.


For any $\varepsilon>0$ there is $\delta>0$ such that $|x-y|<\delta$ implies $|f(x)-f(x)|<\varepsilon$ as $f$ is uniformly continuous on $[0,1]$. We write

$$
    \int_0^1 f(x)g(nx)\;dx = \sum_{i=0}^{n-1} \int_{\frac{i}{n}}^{\frac{i+1}{n}} f(x)g(nx)dx = \frac{1}{n}\sum_{i=0}^{n-1} \int_{i}^{i+1} f\left(\frac{y}{n}\right)g(y)dy. 
$$
We observe that, for $n$ large enough then
$$
    \left|f\bigg(\frac{y}{n}\bigg) - f\left(\frac{i}{n}\right)\right| < \varepsilon \qquad\text{for}\qquad y\in [i,i+1].
$$
Let $C = \Vert g\Vert_{L^\infty(\mathbb{R})}$ then 
$$
    \left|\frac{1}{n}\sum_{i=0}^{n-1} \int_{i}^{i+1} f\left(\frac{y}{n}\right)g(y)dy - \frac{1}{n}\sum_{i=0}^{n-1} \int_{i}^{i+1} f\left(\frac{i}{n}\right)g(y)dy\right| \leq C\varepsilon
$$
and thus 
$$
    \left|\frac{1}{n}\sum_{i=0}^{n-1} \int_{i}^{i+1} f\left(\frac{y}{n}\right)g(y)dy - \left[\frac{1}{n}\sum_{i=0}^{n-1} f\left(\frac{i}{n}\right)\right] \int_{0}^{1} g(y)dy\right| \leq C\varepsilon
$$
using the fact that $g$ is periodic with period $1$. Passing $n\to \infty$ and using the convergence of the Riemann sum for $f$, then letting $\varepsilon\to 0$ we obtain the result.

</details>

**Remark.** *We note that a bounded periodic function does not neccessarily Riemann integrable (the Dirichlet function for example). Nevertheless, the above integral could be understood in the sense of Lebesgue integral and the result holds.*



The assumption $f\in L^\infty(\mathbb{R})$ can be relaxed to $f\in L^1_{\text{loc}}(\mathbb{R})$ with $f\in L^1([0,1])$.

> <a name="thm2">**Theorem 2.**</a> 
> Let $g\in L^1_{\text{loc}}(\mathbb{R})$ be a periodic function with period $1$, $f:[0,1]\to \mathbb{R}$ be a continuous function, then
> $$
    \lim_{n\to \infty} \int_0^1 f(x)g(nx)\;dx = \left(\int_0^1 f(x)dx\right)\left(\int_0^1 g(x)dx\right).$$
<details>
    <summary>Proof.</summary> The only difference in the proof is instead of using the estimate $\Vert g\Vert_{L^\infty([0,1])}\leq C$, we use 
    $$ C = \int_{[0,1]} |g(x)|dx.$$
    Then we have 
    $$
    \begin{aligned}       
        &\left|\frac{1}{n}\sum_{i=0}^{n-1} \int_{i}^{i+1}   f\left(\frac{y}{n}\right)g(y)dy - \frac{1}{n}\sum_{i=0}^{n-1} \int_{i}^{i+1} f\left(\frac{i}{n}\right)g(y)dy\right| \\        
        &\qquad \qquad \leq \frac{1}{n}\sum_{i=0}^{n-1}\int_i^{i+1}\left(\left|f\bigg(\frac{y}{n}\bigg) - f\left(\frac{i}{n}\right)\right||g(y)|\right)dy\\        
        &\qquad \qquad \leq \frac{\varepsilon}{n}\sum_{i=0}^{n-1}\left(\int_i^{i+1}|g(y)|dy\right) = \varepsilon\Vert g\Vert_{L^1([0,1])} \end{aligned}
    $$ and the rest of the proof is similar. 
</details>




As a consequence, we have the following result on weak convergence for $1<p < \infty$ and weak$^*$ convergence in $L^\infty$.   


> <a name="thm3">**Theorem 3.**</a> 
> Let $g\in \mathrm{L}^\infty(\mathbb{R})$ be a periodic function with period $1$. Let $g_n(x) = g(nx)$ for $n\in \mathbb{N}$ and $g_0(x)\equiv \int_0^1 g(x)dx$.
> - (a) $g_n \rightharpoonup g_0$ weakly in $L^p([0,1])$ for $1< p<\infty$.
> - (b) $g_n \rightharpoonup g_0$ weak$^*$ in $L^\infty([0,1])$[^1]. 

<details>
    <summary> Proof. </summary>

    <hr style="width:100%;text-align:left;margin-left:0">

    For part (a), we observe that if $1< p< \infty$ then $\mathrm{C}_c^\infty([0,1])$ is dense in $L^p([0,1])$. Take a test function $\phi \in L^q([0,1])$ where $p^{-1}+q^{-1}=1$, we aim to show that 
    $ \lim_{n\to 
    \infty} \langle \phi, g_n\rangle = \langle \phi, g\rangle$.

    For $\varepsilon>0$ we can find $\phi_\varepsilon\in \mathrm{C}^\infty_c([0,1])$ such that $\Vert \phi_\varepsilon-\phi \Vert_{L^q([0,1])} <\varepsilon$, then by Holder's inequality
    $$
    \left|\int_0^1 \phi(x)g_n(x)\;dx - \int_0^1 \phi_\varepsilon(x)g_n(x)\;dx\right| \leq \Vert \phi_\varepsilon-\phi \Vert_{L^q([0,1])}  \Vert g_n\Vert_{L^p([0,1])} \leq C\varepsilon
    $$
    where $C = \Vert g\Vert_{L^\infty(\mathbb{R})}$. Now take $n\to\infty$ using <span><a href="thm2">Theorem 2</a></span> with $\phi_\varepsilon$ is continuous we obtain 
    $$
    \left|
        \lim_{n\to \infty}\int_0^1 \phi(x)g_n(x)\;dx - \left(\int_0^1 \phi_\varepsilon(x)dx\right) \left( \int_0^1 g(x)\;dx\right)
    \right| 
    \leq C\varepsilon. 
    $$
    Since $\Vert \phi_\varepsilon - \phi \Vert_{L^1([0,1])} \leq \Vert \phi_\varepsilon - \phi \Vert_{L^q([0,1])} < \varepsilon$ as $1\leq q$, sending $\varepsilon\to 0$ we obtain the conclusion. 

    
    <hr style="width:100%;text-align:left;margin-left:0">

    For part (b), the proof is basically the same, but we only consider test function
    $\phi\in L^1([0,1])$, which still satisfies that $\mathrm{C}_c^\infty([0,1])$ is dense in $L^1([0,1])$.
</details>




**Remark.**

* *Theorems [Theorem 2](#thm2) and [Theorem 3](#thm3) are some forms of ergodic property. Here we have used the density of continuous functions in the respective dual spaces. Another way of proving [Theorem 2](#thm2) and [Theorem 3](#thm3) is using the density of characteristic functions of intervals in the respective dual spaces.*s
* *The assumption $g\in L^\infty(\mathbb{R})$ can be replaced by $g\in L^p_{\text{loc}}(\mathbb{R})$ for a specific $p \in (0,\infty)$, and the conclusion becomes the weak convergence in $L^p([0,1])$ for that specific $p$.*

When $p=1$, the techinque we use in the above theorems do not work as $\mathrm{C}^\infty_c([0,1])$ is not dense in $L^\infty([0,1]) = (L^1([0,1))^*$. However if we have an extra assumption then inclusion implies weak convergence in $L^1([0,1])$ as follows.


> <a name="thm4">**Theorem 4.**</a> 
  Let $g\in \mathrm{L}^1_{\text{loc}}(\mathbb{R})$ be a periodic function with period $1$ and $g\in L^p([0,1])$ for some $1<p<\infty$. Let $g_n(x) = g(nx)$ for $n\in \mathbb{N}$ and $g_0(x)\equiv \int_0^1 g(x)dx$, then $ g_n \rightharpoonup g_0$ weakly in $L^1([0,1])$, i.e., 
>  $$
    \lim_{n\to \infty} \int_0^1 g_n(x)\phi(x)dx =  \lim_{n\to \infty} \int_0^1 g_0(x)\phi(x)dx \qquad \text{for all}\;\phi\in L^\infty([0,1]).
>  $$


<details>

<summary> Proof.  </summary>
The fact that $g\in L^p([0,1])$ for $p>1$ implies $g\in L^1([0,1])$ as well.

Take $\phi\in L^\infty([0,1])$, we need to show $\langle g_n,\phi \rangle \to \langle g, \phi\rangle$ as $n\to \infty$. Since $g\in L^p([0,1])$, we see that $g_n \in L^p([0,1])$ as well and 
$$
    \Vert g_n\Vert_{L^p}([0,1]) = \Vert g\Vert_{L^p}([0,1]), \qquad n = 1,2,3,\ldots 
$$
Therefore, take $q \in (0,\infty)$ such that $p^{-1} + q^{-1} = 1$, we can apply [Theorem 3](#thm3) to obtain $g_n\rightharpoonup g$ in $L^p([0,1])$. As $\phi\in L^q([0,1])$ we deduce that
$$
    \lim_{n\to \infty}\int_0^1 \phi(x)\big(g_n(x) - g(x)\big)dx = 0.  
$$ 
<hr style="width:100%;text-align:left;margin-left:0">
</details>

In general, we can remove this extra assumption $g\in L^p([0,1])$ for some $p>1$ by using the [Dunford-Pettis Theorem](https://en.wikipedia.org/wiki/Dunford%E2%80%93Pettis_property#:~:text=In%20functional%20analysis%2C%20the%20Dunford,Banach%20space%20are%20completely%20continuous.) given belows ([Dunford-Pettis Theorem](#thm-Dunford-Pettis)).

> <a name="thm5">**Theorem 5.**</a> 
> Let $g\in \mathrm{L}^1_{\text{loc}}(\mathbb{R})$ be a periodic function with period $1$. Let $g_n(x) = g(nx)$ for $n\in \mathbb{N}$ and $g_0(x)\equiv \int_0^1 g(x)dx$.
> - (c) $g_n \rightharpoonup g_0$ weakly in $L^1([0,1])$.

<details>

<summary> Proof.  </summary> To apply Dunford-Petties theorem, it is clear that $\Vert g_n\Vert_{L^1([0,1])}  = \Vert g\Vert_{L^1([0,1])}$ for all $n$, thus it is uniformly bounded in $L^1([0,1])$ already. We only need to show that it is equi-integrable. Since tightness is trivial due to $[0,1]$ being a compact (finite) set, we only need to show that $(g_n)$ is uniformly integrable, which is a consequence of the following fact
$$
    \lim_{M\to \infty}\left( \sup_n \int_{[0,1]} |g_n(x)|\cdot \mathbb{1}_{\{x\in [0,1]: |g_n(x)|\geq M\}}(x)\;dx\right) = 0. 
$$
By direct computation, we have
$$
    \begin{aligned}
        \int_{[0,1]} |g_n(x)|\cdot \mathbb{1}_{\{x\in [0,1]: |g_n(x)|\geq M\}}(x)\;dx = \int_0^1 |g(z)|\cdot \mathbb{1}_{\{z\in [0,1]: |g(z)|\geq M\}}(z)\;dz \to 0
    \end{aligned}
$$
uniformly as $M\to \infty$ since 
$$
    |\{z\in [0,1]: |g(z)|\geq M\}| \leq \frac{1}{M}\int_0^1 |g(z)|dz \to 0
$$
uniformly as $M\to \infty$. The uniform integrability of $(g_n)$ can be deduced from
$$
\begin{aligned}
    \int_E |g_n(x)|dx &= \int_{E\cap \{|g_n|\geq M\}} |g_n(x)|dx + \int_{E\cap \{|g_n|<M\}} |g_n(x)|dx\\
    &\leq \int_{E\cap \{|g_n|\geq M\}} |g_n(x)|dx  + M|E| \\
    &\leq \int_{E\cap \{|g_n|\geq M\}} |g_n(x)|dx  + M\delta.
\end{aligned}
$$
Choose $\delta = (2M)^{-1}\varepsilon$ and we can choose $M$ large so that the right hand side is less than $\varepsilon$.

</details>



## Uniform integrability, Equi-integrability and Dunford-Pettis Theorem

Before stating Dunford-Pettis Theorem, we state some definitions. 



> <a name="def-Equi-integrability">**Definition (Equi-integrability).**</a> 
  For $\Omega\subset \mathbb{R}^n$, a family of integrable functions $\mathcal{U}\subset L^1(\Omega)$ is *equi-integrable* if the following two conditions hold
> - (*Tight*) The set $\mathcal{U}$ is tight, i.e., for every $\varepsilon>0$ there exists a measurable set $A$ with finite measure such that (trivially true if $\Omega$ is of finite measure)
> $$
    \sup_{u\in \mathcal{U}} \int_{\Omega - A} |u(x)|dx < \varepsilon. $$ 
> - (*Uniform integrable*) For every $\varepsilon > 0$ there exists $\delta > 0$ such that if $E$ is a measurable set with $|E| < \delta$ then
> $$
    \sup_{u\in \mathcal{U}} \int_E |u(x)|dx < \varepsilon. $$

Now we state the Dunford-Pettis theorem that characterizes weak convergence in $\sigma(L^1,L^\infty)$.

> <a name="thm-Dunford-Pettis">**Dunford-Pettis Theorem.**</a> 
  For $\Omega\subset \mathbb{R}^n$, a sequence $(u_n)\subset L^1(\Omega)$ is convergent weakly in $\sigma(L^1,L^\infty)$ if and only if
> - The sequence $(u_n)$ is equi-integrable.
> - The sequence $(u_n)$ is uniformly bounded in $L^1$, i.e., $\sup_n \Vert u_n\Vert_{L^1(\Omega)} \leq C$.







<hr style='width:100%'>
**Remarks and Todos.**

- [ ] Another way of proving [Theorem 2](#thm2) and [Theorem 3](#thm3) is using the density of characteristic functions of intervals in the respective dual spaces. 







<hr style='width:100%'>
 
[^1]: The dual space of $L^1(I)$ is $L^\infty(I)$, i.e., $\big(L^1(I)\big)^* = L^\infty(I)$.

{% endkatexmm %}