#!/bin/sh
# usage: sh install.sh but in this folder

# backups base directory and working directory
BASE_DIR=$(dirname "$0")
WORK_DIR="$PWD"

FILES='
Makefile.template
main.c.template 
Makefile 
configure 
mtemplate 
setdeps'

echo installing in $PWD :

# echo cd $BASE_DIR
cd $BASE_DIR

echo copying ...
echo $FILES
echo ... to $WORK_DIR
# copies files to working directory
cp $FILES $WORK_DIR

# echo cd $WORK_DIR
cd $WORK_DIR
