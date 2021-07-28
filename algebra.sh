counter=0
while true; do
  if /home/hadoop/latest/bin/hadoop fs -ls /apps/hdtech/bds/quality-rt/dt=$DATE_YEST_FORMAT2 then
       exit 0
  elif [[ "$counter" -gt 20000000000 ]]; then
       echo "Counter: $counter times reached; Exiting loop!"
       exit 1
  else
       counter=$((counter+1))
       echo "Tensorflow Packet created $counter time(s); / ??????? " 
       sleep 1800
  fi
done
