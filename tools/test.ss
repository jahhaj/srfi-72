(library
  (test)
  (export m)
  (import
    (only (rnrs base) define-syntax vector)
    (for (only (rnrs base) lambda) expand)
    (for (only (rnrs syntax-case) syntax-case syntax ...) expand)
    )
 
  (define-syntax pm
    (lambda (x)
      (syntax-case x ()
        ((_ b ...)
         #'(vector b ... b ...)))))
         
  (define-syntax m
    (lambda (x)
      (syntax-case x ()
        ((_ b ...)
         #'(pm b ...)))))
 
  )

(import (rnrs) (test))

(write (m 1 2 3))
(newline)

