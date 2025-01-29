;check if the number is a multiple of 3
(= (multiple3 $x) (== (% $x 3) 0))

;check if the number is a multple of 5
(= (multiple5 $x) (== (% $x 5) 0))

;check if a number is either a multiple of 3 or a multiple of 5
(= (can $x) (or (multiple3 $x) (multiple5 $x)))  

;function to sum all numbers from x down to 1 that are multiples of 3 or 5
(= (sum $x) 
   (if (> $x 0)   ; If $x is greater than 0, continue recursion
       (+ (if (can $x) $x 0)  ; If x is a multiple of 3 or 5 add it to the sum if it is not add 0 instead
          (sum (- $x 1)))     ; Recursively call sum on (x - 1) to process the next number
       0))  ; when x is 0 or less return 0 to stop recursion

; example 
! (sum 20) 
