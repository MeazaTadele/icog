(= (func $f $c()) ()) ;If the input list is empty, return an empty list.
;takes a function `$f` a constant `$c` and a list `(:: $x $xs)`
(= (func $f $c (:: $x $xs))
   (:: ($f $x $c) (func $f $c $xs))) ;Applies `$f` to the first element of the list and Recursively processes the rest of the list $xs

(= (addTwo $x $c) (+ $c $x)) ;Returns the sum of $x and $c

! (func addTwo 10 (:: 1 (:: 2 (:: 3 ()))))
