#/bin/sh

clang -cc1 -ast-dump -fcolor-diagnostics $*
