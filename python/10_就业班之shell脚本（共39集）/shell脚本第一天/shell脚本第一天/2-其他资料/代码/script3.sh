#!/bin/bash
#输入目录
read -p "请输入目录:" dir
#进入etc目录下
cd $dir
filenum=`ls -l|wc -l`
echo "该目录下有$filenum个文件"
sleep 5
