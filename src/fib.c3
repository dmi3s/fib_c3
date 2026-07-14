module fib;


struct Matrix2x2 {
    uint128[2][2] m;
}

// c3fmt off
const int MAX_FIB_INDEX_FOR_UINT128 = 186;
const Matrix2x2 E = { .m = { { 1, 0 }, { 0, 1 } } };
const Matrix2x2 P = { .m = { { 1, 1 }, { 1, 0 } } };
// c3fmt on

<*
 @param [&in] a
 @param [&in] b
 @return "The product of two matrices"
 @pure
 @inline
*>
fn Matrix2x2 mat_mul(Matrix2x2* a, Matrix2x2* b) {
    Matrix2x2 r @noinit;
    r.m[0][0] = a.m[0][0] * b.m[0][0] + a.m[0][1] * b.m[1][0];
    r.m[0][1] = a.m[0][0] * b.m[0][1] + a.m[0][1] * b.m[1][1];
    r.m[1][0] = a.m[1][0] * b.m[0][0] + a.m[1][1] * b.m[1][0];
    r.m[1][1] = a.m[1][0] * b.m[0][1] + a.m[1][1] * b.m[1][1];
    return r;
}

<*
 @require n >= 0 : "Matrix power is not defined for negative exponents"
 @return "Matrix raised to the power of n"
 @pure
*>
fn Matrix2x2 mat_pow(Matrix2x2 base, int n) {
    Matrix2x2 result = E;
    while (n > 0) {
        if ((n & 1) != 0) result = mat_mul(&result, &base);
        base = mat_mul(&base, &base);
        n >>= 1;
    }
    return result;
}

<*
 @require n >= 0 : "Fibonacci number is not defined for negative numbers"
 @require n <= MAX_FIB_INDEX_FOR_UINT128 : "Fibonacci number would overflow uint128"
 @return "Fibonacci number"
 @pure
*>
fn uint128 fast_fib(int n) {
    if (n == 0) return 0;
    Matrix2x2 r = mat_pow(P, n - 1);
    return r.m[0][0];
}

