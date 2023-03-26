
(library
 (testing)
 (export zzz)
 (import (only (rnrs base) let-syntax syntax-rules define-syntax cons))

 (let-syntax ((zzz (syntax-rules () ((_) (cons 1 2)))))
   (define-syntax zzz (syntax-rules () ((_) (cons 3 4)))))

 )

(import (rnrs) (testing))

(write (zzz))
