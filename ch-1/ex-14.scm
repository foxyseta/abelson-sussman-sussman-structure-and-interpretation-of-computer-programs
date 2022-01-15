; Exercise 1.14. Draw the tree illustrating the process generated by the
; count-change procedure of section 1.2.2 in making change for 11 cents. What
; are the orders of growth of the space and number of steps used by this process
; as the amount to be changed increases?

; cc 11 5
; - cc 11 4
;   - cc 11 3
;     - cc 11 2
;       - cc 11 1
;         ...
;       - cc 6 2
;         - cc 6 1
;           ...
;         - cc 1 2
;           - cc 1 1
;             - cc 1 0
;             - cc 0 1
;           - cc 0 1
;     - cc 1 3
;       - cc 1 2
;         - cc 1 1
;           - cc 1 0
;           - cc 0 1
;         - cc -4 2
;       - cc -9 3
;   - cc -14 4
; - cc -39 5
;
; If n is the number of cents we need to make change for, then:
; - space: M(n) = \Theta(n)
; - number of steps: T(n) = \Theta(2^n)