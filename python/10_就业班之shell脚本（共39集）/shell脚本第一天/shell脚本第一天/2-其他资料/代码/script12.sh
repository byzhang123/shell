#!/bin/bash
#提示用户输入
read -p "请输入内容:" con
if [ -z "$con" ]
then
	echo "为空"
elif [ -d "$con" ]
then
	echo "是目录"
elif [ -f "$con" ]
then
	echo "是文件"
else
	echo "错误"
fi
