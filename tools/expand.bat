@echo off
echo Expanding file: %*
plt-r5rs --no-prim expand.scm %*
