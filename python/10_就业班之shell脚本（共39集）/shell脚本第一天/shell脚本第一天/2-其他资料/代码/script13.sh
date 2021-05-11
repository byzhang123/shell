#! /bin/bash
#创建函数
install(){
  #进入tmp目录
  cd /tmp
  myfile="oracle_1021_database_linux32.zip"
  if [ -f "$myfile" ]
  then
    echo"该文件已经存在"
  else
    echo"该文件不存在"
    echo"文件正在拷贝中"
    cp /mnt/hgfs/$myfile /tmp
    echo "文件拷贝成功"
  fi
  #解压
  echo "文件正在解压中。。"
  unzip "$myfile"
  echo "文件解压成功"
  #判断文件夹是否存在
  if [ -d "database" ]
  then
    echo"文件夹存在"
    #进入文件夹执行
    cd database
    #执行
    ./runInstall
  else
    echo"文件夹解压失败"
  fi
}
if [ "$user" == "tester" ]
then
  echo"是tester用户"
  #调用install函数
  install

else
  echo"不是tester用户"
fi
