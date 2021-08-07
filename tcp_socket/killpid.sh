#!/bin/bash
echo "kill socket program"
serverpid=`ps -ef | grep "./server" | grep -v "grep" | awk '{print $2}'`
echo "server pid is:" $serverpid
for pid in $serverpid
	do
		echo "kill serverpid:"$pid
		kill -9 $pid
	done
clientpid=`ps -ef | grep "./client" | grep -v "grep" | awk '{print $2}'`
echo "client pid is:"$clientpid
for pid in $clientpid
	do
		echo "kill clientpid:"$pid
		kill -9 $pid
	done
echo "kill all socket process successfully!"