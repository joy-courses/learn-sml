fun fibhr(a, b, 0) = a 
| fibhr(a, b, 1) = b
| fibhr(a, b, count) = fibhr(b, a+b, count-1)

fun fib(n) = fibhr(0, 1, n);

fib(10) = 55;
fib(8) = 21;
fib(2) = 1;