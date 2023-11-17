<<<<<<< HEAD
fun prodhelp(p, n::ns) = prodhelp(p * n, ns)
| prodhelp(p, []) = p

fun prod(l) = prodhelp(l, 1)
=======
(* Make tail recursive *)
fun prod [] = 1
| prod (n::ns) = n * (prod ns);

prod([2,3,4,5]) = 120;
prod([]) = 1;
>>>>>>> main
