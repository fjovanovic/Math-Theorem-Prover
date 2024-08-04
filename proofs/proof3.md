### Solution 1

If we multiply the initial inequality by $2$, we get $2xy + 2yz + 4zx \leq 1 = (x + y + z)^2$, which is equivalent to $2zx \leq x^2 + y^2 + z^2$, or $(x - z)^2 + y^2 \geq 0$, which is always true.  
Equality holds when $x = z$ and $y = 0$, and from the condition $x + y + z = 1$ we get $x = y = \frac{1}{2}$


### Solution 2

We have

$$xy + yz + 2zx = $$

$$y(x + z) + 2zx = $$

$$(1 − x − z)(x + z) + 2zx = $$

$$x + z − x^2 − z^2 = $$

$$\frac{1}{2} − (x − \frac{1}{2})^2 − (z − \frac{1}{2})^2 \leq \frac{1}{2}$$ 

Here, we used that $t^2 \geq 0$. Equality holds when $x = z = \frac{1}{2}$, and then $y = 0$


### Solution 3

By squaring the condition $x + y + z = 1$, we get

$$x^2 + y^2 + z^2 + 2xy + 2yz + 2zx = 1$$

From here, it follows that

$$2(xy + yz + 2zx) = 1 − (x^2 + y^2 + z^2 − 2zx) = 1 − (x − z)^2 − y^2 \leq 1$$

Equality holds when $x = z$ and $y = 0$, that is, for $x = z = \frac{1}{2}$ and $y = 0$


### Solution 4

Express $z$ in terms of $x$ and $y$: $z = 1 - x - y$ and substitute this into the initial inequality. Then we get
$y^2 + (2x - 1)y + (2x^2 - 2x + \frac{1}{2}) \geq 0$, which is a quadratic inequality in terms of $y$. 
Since its discriminant $D = -(2x - 1)^2 \leq 0$, we find that $y^2 + (2x - 1)y + (2x^2 - 2x + \frac{1}{2}) \geq 0$ is always satisfied.  
Equality holds when $D = 0$, which is for $x = \frac{1}{2}$ and then $y = \frac{-b \pm \sqrt{D}}{2a} = 0$, and from the initial condition we get $z = \frac{1}{2}$.  
> [!NOTE]:  
> The condition that the numbers are non-negative is redundant!