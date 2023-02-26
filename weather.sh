#!/bin/sh


ppp=`curl wttr.in/Shanghai?format=\"%l:+%c+%t+%f+%w+%S+%s\"\&m`
ppp1=`echo ${ppp//\"/}`
ARR=($ppp1)
OUT="天气:${ARR[1]} \n最高气温:${ARR[3]} \n最低气温:${ARR[4]} \n风向风速:${ARR[5]} 日出时间:${ARR[6]} 日落时间:${ARR[7]}"
echo $OUT