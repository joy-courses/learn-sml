datatype 'a tree = Lf | Br of 'a * 'a tree * 'a tree;

fun treedepth Lf = 0
    | treedepth (Br (_, l, r)) = 1 + Int.max(treedepth l, treedepth r);

fun preorder (Lf, res) = res
    | preorder (Br(v, t1, t2), res) = v::(preorder (t1, preorder(t2, res))); 

fun inorder (Lf, res) = res
    | inorder (Br(v, t1, t2), res) = (inorder (t1, v::inorder(t2, res))); 

fun postorder (Lf, res) = res
    | postorder (Br(v, t1, t2), res) = (postorder (t1, postorder(t2, v::res))); 

val birnam = Br(1, Br(2, Lf, Br(3,Br(4,Lf,Lf), Lf)), Lf);
treedepth(birnam);
preorder(birnam, []);
inorder(birnam, []);
postorder(birnam, []);

e