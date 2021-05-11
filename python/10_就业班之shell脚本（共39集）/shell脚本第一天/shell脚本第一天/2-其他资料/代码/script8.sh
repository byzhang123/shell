#!/bin/bash
#提示用户输入用户明和密码
read -p "请输入你的用户名和密码:" username passwd
#进行判断
if [ "$username" == "admin" -a "$passwd" == "123456" ]
then
	echo "登录成功"
else
	echo "登录失败"
fi

