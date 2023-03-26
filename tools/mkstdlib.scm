;; USAGE: plt-r5rs --no-prim stdlib.scm

(load "../srfi/december-27-07/compat-plt.scm")
(load "../srfi/december-27-07/runtime.scm")
(load "../srfi/december-27-07/expander.scm")
(ex:expand-file "../srfi/december-27-07/standard-libraries.scm" "../srfi/december-27-07/standard-libraries.exp")
