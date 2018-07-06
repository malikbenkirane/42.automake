#!/bin/sh
# usage: sh install.sh but in this folder
FILES='Makefile.template main.c.template mtemplate configure Makefile'
echo installing
echo $FILES
cp $FILES ..
