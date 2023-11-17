datatype shape = Point of real * real
| Line of (real * real) * (real * real)
| Triangle of (real * real) * (real * real) * (real * real);

fun distance((x1, y1), (x2, y2)) = Math.sqrt((x1-x2) * (x1-x2) + (y1-y2) * (y1-y2));

fun showTriCood [] = false
| showTriCood(Triangle(a,b,c)::ps) = (Real.compare(distance(a,b), distance(b,c)) = EQUAL andalso Real.compare(distance(b,c), distance(c,a)) = EQUAL) orelse showTriCood(ps)
| showTriCood(p::ps) = showTriCood(ps);


val shapes = [Line((2.2,3.5),(4.1,5.0)), Point(4.5,2.0), Triangle((21.0, 4.5),(15.5, 21.1),(10.5, 10.2))];
showTriCood(shapes);