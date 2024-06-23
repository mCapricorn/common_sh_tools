#!/bin/sh
ps -fe|grep 'PalServer-Linux-Test Pal' |grep -v grep
if [ $? -ne 0 ]
then
  echo $(date +%F%n%T) "start pal server....." >> ~/checklog.log
  nohup ~/Steam/steamapps/common/PalServer/PalServer.sh
else
  echo $(date +%F%n%T) "pal server runing....." >> ~/checklog.log
  #nohup ~/Steam/steamapps/common/PalServer/test.sh
fi
