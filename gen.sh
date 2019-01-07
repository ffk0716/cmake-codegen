#!/bin/bash
set -eu

echo "void foo();" > a.h

echo "#include <cstdio>" > a.cxx
echo "void foo()" >> a.cxx
echo "{" >> a.cxx
echo "    printf(\"foo\\n\");" >> a.cxx
echo "}" >> a.cxx
