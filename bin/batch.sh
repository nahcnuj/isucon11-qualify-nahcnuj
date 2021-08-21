#!/bin/bash

set -e

script=$1
shift
args="$@"

for server in isucon11-qualify-{1,2,3}; do
    echo "bin/${script}.sh" $server $args
    "bin/${script}.sh" $server $args
done
wait
