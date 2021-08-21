#!/bin/bash

set -e

server=$1
target=$2

if [ $target = "app" ]; then
    ssh $server sh -c "\"sudo systemctl daemon-reload && sudo systemctl restart isucondition.perl\""
elif [ $target = "nginx" ]; then
    ssh $server sh -c "\"sudo /usr/sbin/nginx -t && sudo /usr/sbin/nginx -s reload\""
elif [ $target = "mysql" ]; then
    ssh $server sh -c "\"sudo systemctl daemon-reload && sudo systemctl restart mysqld\""
fi