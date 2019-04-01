#!/bin/sh
rm -rf nohup.out
cmd=`ps -ef|grep $1|head -1|awk '{printf $8}'`
if [ "${cmd}" == "java" ]; then
	kill -9 `ps -ef|grep $1|head -1|awk '{printf $2}'`
fi
nohup java -jar $1 &
echo -e \\n
until [ -e nohup.out ]
do 
tail -f nohup.out
done
