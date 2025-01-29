; this the binary function that takes $f a function and (($x $y $z) $c)a list and a constant 
(= (func $f (($x $y $z) $c))  
   (($f $x $c) ($f $z $c) ($f $y $c))) ;this line applies the function f to each element of the lsit

(= (addTwo $x $c)((+ $x $c))) 

! (func addTwo ((1 2 3) 10))
