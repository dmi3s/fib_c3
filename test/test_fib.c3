import fib;


fn void test_fast_fib_basic() @test {
    test::eq(fib::fast_fib(0), 0ull);
    test::eq(fib::fast_fib(1), 1ull);
    test::eq(fib::fast_fib(2), 1ull);
    test::eq(fib::fast_fib(3), 2ull);
    test::eq(fib::fast_fib(4), 3ull);
    test::eq(fib::fast_fib(5), 5ull);
    test::eq(fib::fast_fib(6), 8ull);
    test::eq(fib::fast_fib(10), 55ull);
    test::eq(fib::fast_fib(20), 6765ull);
    test::eq(fib::fast_fib(30), 832040ull);
    test::eq(fib::fast_fib(40), 102334155ull);
    test::eq(fib::fast_fib(50), 12586269025ull);
}

fn void test_fast_fib_monotonic() @test {
    // Проверяем, что последовательность монотонно возрастает
    for (int i = 3; i <= fib::MAX_FIB_INDEX_FOR_UINT128; i++) {
        test::gt(fib::fast_fib(i), fib::fast_fib(i - 1));
    }
}

fn void test_fast_fib_max() @test {
    // Проверяем, что максимальное значение корректно
    uint128 max_val  = fib::fast_fib(fib::MAX_FIB_INDEX_FOR_UINT128);
    uint128 prev_val = fib::fast_fib(fib::MAX_FIB_INDEX_FOR_UINT128 - 1);
    test::gt(max_val, prev_val);
}

fn void test_fast_fib_start_cases() @test {
    // Проверка начальных условий
    test::eq(fib::fast_fib(0), 0ull);
    test::eq(fib::fast_fib(1), 1ull);
}

