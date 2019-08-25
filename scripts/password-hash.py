#!/bin/python3

import sys
import crypt

def salted_hash(password):
  return crypt.crypt(password, crypt.mksalt(crypt.METHOD_SHA512))

# Get number of arguments
numArgs = len(sys.argv) - 1
if numArgs == 1:
  print(sys.argv[1])
  print(salted_hash(sys.argv[1]))
elif numArgs == 0:
  complete_inout = sys.stdin.read()
  print(salted_hash(complete_inout))
else:
  print("Please use either one argument or stdin", file=sys.stderr)
  exit(1)
