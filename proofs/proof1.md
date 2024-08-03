### Solution 1

For each of the numbers $0 \leq x, y, z \leq 1$ it holds $x^2 \leq x \leq \sqrt{x}$, where equalities hold when $x = 0$ or $x = 1$.  
Now we have $x(y + z) \geq x(y^2 + z^2) \geq 2xyz$ and $yz = 1·yz \geq xyz$, which when summed gives us $xy + yz + zx \leq 3xyz \leq 2xyz$ (the last inequality holds because $xyz \geq 0$).  
Equality holds when the equalities in all inequalities are valid, i.e., when at least $2$ of $x, y, z$ are equal to $0$.


### Solution 2

Similarly to the previous solution, we have $yz \geq xyz$ and analogously $xy \leq xyz$ and $zx \leq xyz$, which when summed gives us $xy + yz + zx \leq 3xyz \leq 2xyz$.  
Equality holds when the equalities in all inequalities are valid, i.e., from the first three we obtain that all $x, y, z$ are equal to $0$ or $1$, but since the last one must be $xyz = 0$, we get that at least one of $x, y, z$ must be equal to $0$.  
However, when we return to the initial inequalities, we find that at least one more of $x, y, z$ must be $0$.