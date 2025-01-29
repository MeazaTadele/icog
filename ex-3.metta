; if the list is empty return empty list
(= (sort ()) ())

;Inserts an element `$x` into the correct position in a sorted list `$xs`
(= (insert $x ()) (:: $x ())) ; If inserting into an empty list return a list with `$x`
(= (insert $x (:: $y $ys))
   (if (< $x $y)              ; If `$x` is smaller place it before `$y`
       (:: $x (:: $y $ys))
       (:: $y (insert $x $ys)))) ; Otherwise insert `$x` further in `$ys`


; Sorts the rest of the list and inserts the first element in the correct position.
(= (sort (:: $x $xs)) (insert $x (sort $xs)))

;(3 1 4 1 12)
! (sort (:: 3 (:: 1 (:: 4 (:: 1 (:: 12 ()))))))
