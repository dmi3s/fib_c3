import std::io;
import fib;


fn void main() {
    for (int i = 0; i <= 30; i++) {
        io::printf("fast_fib(%d) = %d\n", i, fib::fast_fib(i));
    }
}
