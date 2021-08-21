#!/bin/bash

for server in isucon11-qualify-{1,2,3}; do
    rsync -av ${server}:/var/log/nginx/access.log.ltsv /tmp/${server}.access.log.ltsv
    ssh $server sh -c "\"sudo truncate /var/log/nginx/access.log.ltsv --size 0\""
done
cat /tmp/*.access.log.ltsv >/tmp/access.log.ltsv
