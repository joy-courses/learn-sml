(* Make tail recursive *)

fun prod l = prodr(l, 1);

prod([2,3,4,5]) = 120;
prod([]) = 1;

fun prodr([], result) = result
| prodr ((n::ns), r) = prodr(ns, n+r);