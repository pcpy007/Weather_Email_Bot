#!/bin/sh


ppp=`curl wttr.in/Shanghai?format=\"%l:+%c+%t+%f+%w+%S+%s\"\&m`
ppp1=`echo ${ppp//\"/}`
ARR=($ppp1)
OUT="天气:${ARR[1]}    温度:${ARR[2]}    体感温度:${ARR[3]}    风向风速:${ARR[4]}    日出时间:${ARR[5]}    日落时间:${ARR[6]}"
echo $OUT