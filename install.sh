#!/bin/sh
# usage: sh install.sh but in this folder
FILES='Makefile.template main.c.template Makefile'
echo installing in $PWD
echo $FILES
cp $FILES $PWD
