@echo off
echo Executing file: %*
plt-r5rs --no-prim run.scm %*
