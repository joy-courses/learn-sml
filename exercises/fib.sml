fun fibacc(a,b,0) = a
| fibacc(a,b,1) = b
| fibacc(a,b,acc) = fibacc(b, a+b, count-1)

fun fib(n) = fibacc(0,1,n)

fib(10) = 55;
fib(8) = 21;
fib(2) = 1;