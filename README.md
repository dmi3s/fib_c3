## Fibonacci Numbers

This program calculates Fibonacci numbers up to a maximum of 186, because t[1D[K
the `uint128` data type overflows at the 187th number.

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

In addition, the algorithm uses a technique for fast exponentiation:

$$
A^{n} = 
$$

This results in a calculation time for Fibonacci numbers that is less than [K
O(n), and even close to O(log n).

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
|  |--[fib.c3](src/fib.c3)              -- Module containing functions for [K
calculating Fibonacci numbers.
|  |--[main.c3](src/main.c3)            -- Module containing the `main` fun[3D[K
function.
|  tests/
|  |--[test_fib.c3](tests/test_fib.c3)  -- Module containing tests for func[4D[K
functions in `fib`.
```

## License

This project is licensed under the MIT license. See [LICENSE](LICENSE).

