#!/bin/bash
#serverpid=`ps -ef | grep "./server" | awk '{print $2}'`
serverpid=`ps -ef | grep "./server" | grep -v "grep" | awk '{print $2}'`
echo "server pid is:"$serverpid

if true;then
if ["$serverpid" = ""];then
echo "no server pid, need to excute server"
./server&
else
echo "has server pid, not need to excute server"
fi
fi

#-v选项是显示不包含匹配文本的所有行
#echo `ps -ef | grep ./server | grep -v "grep"`


clientpid=`ps -ef | grep "./client" | grep -v "grep" | awk '{print $2}'`
#clientpid=`ps -ef | grep "./client"`
echo "client pid is:"$clientpid

if ["$clientpid" = ""];then
echo "no client pid, need to excute client"
./client 127.0.0.1
else
echo "has client pid, not need to excute client"
fi