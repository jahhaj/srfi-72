
(import (rnrs))

#;(define-syntax simple
  (lambda (x)
    (syntax-case x ()
      ((_ a ...) #''(a ...))
      )))

#;(define-syntax too-few
  (lambda (x)
    (syntax-case x ()
      ((_ b ...) #'(b))
      )))

#;(define-syntax too-many
  (lambda (x)
    (syntax-case x ()
      ((_ c ...) #'(c ... ...))
      )))

#;(define-syntax too-many-and-ok
  (lambda (x)
    (syntax-case x ()
      ((_ (c ...) (d ...)) #''((c ... d) ...))
      )))

#;(define-syntax double-ellipsis
  (lambda (x)
    (syntax-case x ()
      ((_ (e ...) ...) #''(e ... ...))
      )))

#;(define-syntax double-depth
  (lambda (x)
    (syntax-case x ()
      ((_ (f ...) ...) #''((f ...) ...))
      )))

(define-syntax pairs
  (lambda (x)
    (syntax-case x ()
      ((_ (a b) ...) #'(a ... b ...))
      )))
