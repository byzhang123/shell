#!/bin/bash
dir=`ls /root`
if [ "$dir" == "" ];then
	echo "目录为空"
else
	echo "目录不为空"
fi
