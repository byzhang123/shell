#!/bin/bash
#创建editenv函数
editenv(){
  #先进入到这个目录ian
  cd  /home/tester
  #向文件中插入环境变量值
  set -i "文件行号和内容" 文件名
  #插入完成后更新文件内容
  source ./.bash_profile
  #判断是否配置成功
  if [ "$CRACLE_BASE" == "/oracle"]
  then
    echo "配置成功"
  else
    echo"配置失败"
  fi
}
#创建createdir函数
createdir(){
  #创建目录
  mydir="/oracle/produce/10.2.0/db-1"
  mkdir -p $mydir
  #判断目录是否创建成功
  if [ -d "$mydir" ]
  then
    echo "目录创建成功"
    #修改oracle的属组
    chrown -R tester.oinstall /oracle
    #修改目录操作权限
    chomd 755 -R /oracle
    #调用editenv函数
    editenv

  else
    echo "目录创建失败"
  fi
}
#创建createuser函数
createuser(){
  #创建用户
  useradd tester -g oinstall -G dba
  finduser=`grep "tester" /ete/passwd|cut -d ":-f 1"`
  if [ "$finduser" == "tester" ]
  then
    echo"用户创建成功"
    #修改用户密码
    passwd tester
    echo"创建用户成功"
    #调用函数
    createdir
  else
    echo"用户创建失败"
  fi
}
#创建函数
creategrp(){
  #新建管理组
  groupadd dba
  #先截取
  finddba=`grep "dba"/etc/group|cut -d ":" -f 1`
  #判断是不是存在
  if [ "$findba" == "dba" ]
  then
    echo "创建管理组完成"
    #创建安装组
    groupadd oinstall
    #查找组并定义变量
    finoin=`grep "oinstall" /etc/group|cut -d ":"-f 1`
    #判断是否成功
    if [ "$finoin" == "oinstall"]
    then
      echo "安装组创建成功"
      #调用createuser函数
      createuser
    else
      echo "安装组创建失败"
    fi
  else
    echo "创建失败"

fi
}
 #先当前用户是不是root  $USER
if [ "$USER" == "root"]
then
   echo"当前用户是root"
   #调用函数
   creategrp
else
  echo"当前用户不是root"
fi
