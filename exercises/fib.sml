fun fib(a, b, 0) = a
| fib(a, b, 1) = b
| fib(a, b, count) = fib(b, a, count-1);

fun fib(n) = fib(0, 1, n)

fib(10) = 55;
fib(8) = 21;
fib(2) = 1;