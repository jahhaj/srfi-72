;; USAGE: plt-r5rs --no-prim run.scm <library or program source file>

(load "../srfi/december-27-07/compat-plt.scm")
(load "../srfi/december-27-07/runtime.scm")
(load "../srfi/december-27-07/expander.scm")
(load "../srfi/december-27-07/standard-libraries.exp")

(#%require (only racket/base current-command-line-arguments))

(let ((args (current-command-line-arguments)))
  (if (= (vector-length args) 1)
    (ex:run-r6rs-program (vector-ref args 0))
    (display "invalid arguments\n")))
