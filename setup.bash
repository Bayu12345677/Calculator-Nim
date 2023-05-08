#!/data/data/com.termux/files/usr/bin/bash

if test "$1" == "build"; then
	nimble refresh
	nimble install nim
	nimble install mathexpr
elif test "$1" == "run"; then
	nim c --hints:off -d:ssl calculator.nim
	./calculator
fi
