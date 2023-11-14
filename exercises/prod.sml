(* Make tail recursive *)
fun prodhr ([], r) = r
| prodhr((n::ns), r) = prodhr(ns, n*r);

fun prod(l) = prodhr(l, 1);

prod([2,3,4,5]) = 120;
prod([]) = 1;