#!/bin/bash
#进入etc目录下
cd $1
filenum=`ls -l|wc -l`
echo "该目录下有$filenum个文件"
