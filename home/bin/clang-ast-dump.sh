#/bin/sh

#clang -cc1 -ast-dump -fcolor-diagnostics $*
clang -fsyntax-only -Xclang -ast-dump
