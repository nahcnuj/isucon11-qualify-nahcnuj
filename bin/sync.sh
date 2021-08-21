#!/bin/bash

set -e

server=$1

CHDIR="pwd >/dev/null && cd"

ssh $server sh -c "$CHDIR webapp/perl \
    && git pull \
"
