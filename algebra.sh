#!/bin/sh
counter=0
while true; do
  if /home/hadoop/latest/bin/hadoop fs -ls /apps/hdtech/bds/quality-rt/dt=$DATE_YEST_FORMAT2 then
       exit 0
  else
       counter=$((counter+1))
       echo "Tensorflow Packet created $counter time(s); / ??????? " 
       sleep 1800
  fi
done
