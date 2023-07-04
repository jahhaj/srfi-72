(library
  (test)
  (export)
  (import
    (for (rnrs base) run expand (meta 2))
    (for (rnrs syntax-case) expand (meta 2))
    )
 
  (define-syntax m
    (lambda (x)

      (define-syntax m2
        (lambda (xx)
          (syntax-case xx ()
            ((_ a) #'(syntax-case x () ((_ b) #'(cons a b)))))))

      (m2 111)))

  (m 222)
 
  )

