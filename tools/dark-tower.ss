(library
 (dark-tower)
 (export static-map)
 (import
   (only (rnrs base) define-syntax)
   (for (only (rnrs base) lambda) run expand)
   (for (only (rnrs) quote) (meta -1))
   (for (only (rnrs syntax-case) syntax-case syntax _ ...) run expand)
   )
 
 (define-syntax static-map
   (lambda (x)
     (syntax-case x ()
	     ((_ (name value) ...)
	      #'(lambda (x)
		        (syntax-case x (<names> name ...)
			        ((_ <names>) #''(name ...))
			        ((_ name) #'value) ...))))))

 )
 
(import (rnrs) (for (dark-tower) expand))

(define-syntax colour (static-map (red #\R) (green #\G) (blue #\B)))
 
(display "Available colours ")
(display (colour <names>))
(display " ")
(display (list (colour red) (colour green) (colour blue)))
(newline)
