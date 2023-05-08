import strformat
import os
import strutils
import mathexpr

proc printf(formatstr: cstring) {.header: "<stdio.h>", varargs.}
proc round*(x: float): float {.importc: "round", header: "<math.h>".}

let es = newEvaluator()
# penentu genap dan ganjil
proc CheckEvenOdd(num: int): string =
  if num mod 2 == 0:
    return "Genap"
  else:
    return "Ganjil"

proc main() =
  discard os.execShellCmd("clear")
  let
    author = "Bayu Rizki A.M"
    Youtube = "Pejuang Kentang"
    Github = "Bayu12345677"
    Name = "Calculator"
    tampilan = fmt """
    -----------------------------
        Author: {author}
        Youtub: {Youtube}
        Github: {Github}

        {Name}
    -----------------------------"""

  echo (tampilan)
  echo ("     info : kalkulator")
  echo ""
  printf("(example: 1 + 1) > ")
  let answer: string = readLine(stdin)
  echo ""
  let hasil = es.eval(answer)
  let bytes = sizeof(int(hasil))
  let getfinish = fmt """
    Bytes          : {bytes}
    Result_Integer : {int(hasil)}
    Result_Float   : {hasil}
    value          : {CheckEvenOdd(int(hasil))}"""

  echo (getfinish)
  echo ""
  quit()

main()
