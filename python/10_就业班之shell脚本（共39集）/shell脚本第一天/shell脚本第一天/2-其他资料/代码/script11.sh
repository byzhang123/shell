#!/bin/bash
#提示用户输入分数
read -p "请输入你的分数:" score
#进行判断
if [ "$score" -ge 90 -a "$score" -le 100 ]
then
	echo "优秀"
elif [ "$score" -ge 80 -a "$score" -lt 90 ]
then
	echo "良好"
elif [ "$score" -ge 70 -a "$score" -lt 80 ]
then
	echo "一斑"
elif [ "$score" -ge 60 -a "$score" -lt 70 ]
then
	echo "及格"
else
	echo "西西睡把"
fi
