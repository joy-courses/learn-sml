datatype shape = Point of real * real
| Line of (real * real) * (real * real)
| Triangle of (real * real) * (real * real) * (real * real)

fun close (a:real, b:real) = (a - b) < 0.0001 andalso (a - b) > ~0.0001

fun distance ((ax: real, ay: real), (bx: real, by: real)) =
        Math.sqrt ( (ax - bx) * (ax - bx) + (ay - by) * (ay - by) );

fun isEqTri (Point (_)) = false
    | isEqTri (Line (_)) = false
    | isEqTri (Triangle (a, b, c)) = 
        (close (distance (a, b), distance (b, c))) andalso
        (close (distance (a, b), distance (a, c)));
        


fun showTriCood [] = []
    | showTriCood(Triangle(a,b,c)::ps) = (a,b,c)::showTriCood(ps)
    | showTriCood(p::ps) = showTriCood(ps)

fun containsEqTri l = List.exists isEqTri l;

val shapes = [Line((2.2,3.5),(4.1,5.0)), Point(4.5,2.0), Triangle((21.0, 4.5),(15.5, 21.1),(10.5, 10.2))];
showTriCood(shapes);
val hasEqTri = [Line((2.2,3.5),(4.1,5.0)), Point(4.5,2.0), Triangle((0.0, 0.0),(0.5, 0.866025404),(1.0, 0.0))];
containsEqTri(shapes);
containsEqTri(hasEqTri);