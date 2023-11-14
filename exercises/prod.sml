(* Make tail recursive *)
fun prodt (total, []) = total
    | prodt (total, h::tail) = prodt(total * h, tail);
fun prod [] = 1
    | prod (n::ns) = prodt(n, ns);

prod([2,3,4,5]) = 120;
prod([]) = 1;
e