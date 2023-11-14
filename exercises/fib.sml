fun fibt(0, n1, n2) = n1
    | fibt(count, n1, n2) = fibt(count - 1, n1 + n2, n1);

fun fib(0) = 0
    | fib(n) = fibt(n - 1, 1, 0);


fib(10) = 55;
fib(8) = 21;
fib(2) = 1;
fib(50) = 12586269025;
e