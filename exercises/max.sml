fun max2 (i1, i2) = if i1 > i2 then i1 else i2;

fun maxmt (sofar, []) = sofar
    | maxmt (sofar, h::tail) = maxmt(max2(sofar, h), tail)

fun maxm [] = NONE
    | maxm (m::ns) = SOME(maxmt(m, ns));

maxm([43,25,2,4,2434]);
maxm([30, 41, 22, ~12, 0, 3]);
maxm([]);
e