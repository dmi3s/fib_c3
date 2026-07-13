## Fibonacci Numbers
The program outputs Fibonacci numbers up to 186, as the uint128 data type o[1D[K
overflows at the 187th number.

The algorithm's idea is based on:

$$
\begin{pmatrix}
1 & 1 \\
1 & 0
\end{pmatrix}^n = \begin{pmatrix}
F_{n+1} & F_n \\
F_n & F_{n-1}
\end{pmatrix}
$$
plus a fast exponentiation algorithm:
$$
  A^{n} =
$$

which gives a time complexity for calculating Fibonacci numbers smaller tha[3D[K
than $O(n)$, and even close to $O(\log n)$.

## Running the Program
* To run the program:
  ```bash
  $ c3c run
  ```
* To run tests:
  ```bash
  $ c3c test
  ```

## Source Code Structure

<font face="monospace">
fib_c3/<br/>
|--src/<br/>
|  |--[fib.c3](src/fib.c3)              -- module containing functions for [K
calculating the Fibonacci number<br/>
|  |--[main.c3](src/main.c3)            -- module containing the main funct[5D[K
function<br/>
|  tests/<br/>
|  |--[test_fib.c3](tests/test_fib.c3)  -- module containing tests for func[4D[K
functions from fib<br/>
</font>

## License
MIT License. See [LICENSE](LICENSE).

