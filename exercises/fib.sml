fun fibr(a, b, 0) = a
| fibr(a, b, 1) = b
| fibr(a, b, count) = fibr(b, count, a+b);

fun fib(n) = fibr(0, 1, n)

fib(10) = 55;
fib(8) = 21;
fib(2) = 1;