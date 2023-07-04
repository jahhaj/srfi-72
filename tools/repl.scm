;; USAGE: plt-r5rs --no-prim repl.scm

(load "../srfi/december-27-07/compat-plt.scm")
(load "../srfi/december-27-07/runtime.scm")
(load "../srfi/december-27-07/expander.scm")
(load "../srfi/december-27-07/standard-libraries.exp")

(ex:repl (list '(import (rnrs))))
(let loop ()
  (display "$ ")
  (let ((expr (read)))
    (if (not (eof-object? expr))
      (begin
        (ex:repl (list expr))
        (loop)))))

