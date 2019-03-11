#~/bin/sh
path=`pwd`
filepath="${path}/nohup.out"

rm -rf ${filepath}
pid=`ps -ef|grep $1|head -1|awk '{printf $2}'`
echo $pid
kill -9 $pid
nohup java -jar $1 &

until [ -e ${filepath} ]
do 
tail -f nohup.out
done

