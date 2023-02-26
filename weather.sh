#!/bin/sh

set -eux

CITY=Shanghai
LANGUAGE="zh-cn"
UNIT=m
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36"

ppp=`curl \
    -H \"Accept-Language: $LANGUAGE\" \
    -H \"User-Agent: $UA\" \
    wttr.in/Shanghai?format=\"%l:+%c+%C+%t+%f+%w+%S+%s\"\&m`
ppp1=`${ppp//\"/}`
ARR=($ppp1)
OUT="天气:${ARR[1]} \n最高气温:${ARR[3]} \n最低气温:${ARR[4]} \n风向风速:${ARR[5]} 日出时间:${ARR[6]} 日落时间:${ARR[7]}"
echo $OUT