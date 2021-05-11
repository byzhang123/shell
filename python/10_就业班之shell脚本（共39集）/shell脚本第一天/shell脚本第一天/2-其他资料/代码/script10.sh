#!/bin/bash
#提示用户输入
read -p "请输入一个目录:" dir
#进行判断 判断是否是目录
if test -d $dir
then
	
#统计文件的个数
	filenum=`ls -l $dir|wc -l`
	echo "目录$dir下的文件个数为$filenum"
else
	echo "目录不存在"
fi
