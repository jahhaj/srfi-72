;; USAGE: plt-r5rs --no-prim expand.scm <library or program source file>

(load "../srfi/december-27-07/compat-plt.scm")
(load "../srfi/december-27-07/runtime.scm")
(load "../srfi/december-27-07/expander.scm")
(load "../srfi/december-27-07/standard-libraries.exp")

(#%require (only racket/base current-command-line-arguments file-exists? delete-file path-replace-extension))

(let ((args (current-command-line-arguments)))
  (if (= (vector-length args) 1)
    (let* ((path-in (vector-ref args 0))
           (path-out (path-replace-extension path-in ".exp")))
      (if (file-exists? path-out)
        (delete-file path-out))
      (ex:expand-file path-in path-out))
    (display "invalid arguments\n")))
