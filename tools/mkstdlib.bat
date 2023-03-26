@echo off
copy ..\srfi\december-27-07\standard-libraries.exp ..\srfi\december-27-07\standard-libraries.old /y > NUL
del ..\srfi\december-27-07\standard-libraries.exp
plt-r5rs --no-prim mkstdlib.scm
