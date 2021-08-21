#!/bin/bash

set -e

for server in isucon11-qualify-{1,2,3}; do
    cmd="pwd && cd webapp/perl && pwd && git pull"
    echo ssh $server sh -c \"$cmd\"
    ssh $server sh -c \"$cmd\"
done	
