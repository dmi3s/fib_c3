## Fibonacci Numbers

This program calculates Fibonacci numbers up to a maximum of 186, because the `uint128` data type overflows at the 187th number.

The algorithm's idea is based on the following matrix equation:

$$
\begin{pmatrix}
1 & 1 \\
1 & 0
\end{pmatrix}^n = \begin{pmatrix}
F_{n+1} & F_n \\
F_n & F_{n-1}
\end{pmatrix}
$$

In addition, I use the algorithm uses a technique for fast exponentiation.

This results in a calculation time for Fibonacci numbers that is less than $O(n)$, and even close to $O(\log n)$.

## Running

* To run the program:
  ```bash
  $ c3c run
  ```
* To run the tests:
  ```bash
  $ c3c test
  ```

## Source Code Structure

```
fib_c3/
|--src/
|  |--fib.c3        -- Module containing functions for calculating Fibonacci numbers.
|  |--main.c3       -- Module containing the `main` function.
|  tests/
|  |--test_fib.c3]  -- Module containing tests for functions in `fib.c3`.
```

## License

This project is licensed under the MIT license. See [LICENSE](LICENSE).

