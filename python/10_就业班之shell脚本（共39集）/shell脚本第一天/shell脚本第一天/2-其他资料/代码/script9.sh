#!/bin/bash
#输入数字
read -p "please input a num:" num
#判断
if [ "$num" -gt 0 ]
then
	((num--))
	echo $num
else
	((num++))
	echo $num
fi
