fun prodhelp(p, n::ns) = prodhelp(p * n, ns)
| prodhelp(p, []) = p

fun prod(l) = prodhelp(l, 1)