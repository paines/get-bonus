#lang racket/base
(require racket/contract)

; A joystick-state is a
;  sticks : stick -> (axis 0 / pov 1) -> which -> int
;  buttons : button -> boolean
(struct joystick-state (sticks buttons) #:transparent)

(provide/contract 
 [struct joystick-state
         ([sticks 
           (vector-immutableof
            (vector/c
             #:immutable #t
             (vector-immutableof number?)
             (vector-immutableof number?)))]
          [buttons
           (vector-immutableof boolean?)])])