#!/bin/sh

set -eux

CITY=Shanghai
LANGUAGE="zh-cn"
UNIT=m
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36"

curl \
    -H "Accept-Language: $LANGUAGE" \
    -H "User-Agent: $UA" \
    -o result.jpg \
    wttr.in/$CITY?format=4\&$UNIT.png