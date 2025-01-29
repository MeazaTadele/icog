; check if a number is even
(= (even $x) (== (% $x 2) 0)) 

; this function starts the Fibonaci sequence from 1 and 2
(= (sumEvenFibo $x) (sumEvenFiboHelper 1 2 $x))  

; function to sum even Fibonacci numbers up to a given limit
(= (sumEvenFiboHelper $1 $2 $limit)
   (if (<= $1 $limit)   ; check if the number is less than or equals to the limit we provided, if it is it will continue the recurssion 
       (+ (if (even $1) $1 0)  ; If the number is even it add it to the sum otherwise it add 0
          (sumEvenFiboHelper $2 (+ $1 $2) $limit))  ; it Generate the next Fibonacci term and recurse
       0))  ; if number exceeds the limit it return 0

; example
! (sumEvenFibo 100)
