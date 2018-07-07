#!/bin/sh
# usage: sh install.sh but in this folder

BASE_DIR=$(dirname "$0")
WORK_DIR="$PWD"

FILES='Makefile.template main.c.template Makefile configure mtemplate'
echo installing in $PWD :

echo cd $BASE_DIR
cd $BASE_DIR

echo copying $FILES to $WORK_DIR
cp $FILES $WORK_DIR

echo cd $WORK_DIR
cd $WORK_DIR
