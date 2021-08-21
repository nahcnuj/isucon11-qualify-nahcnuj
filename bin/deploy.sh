#!/bin/bash

set -e

server=$1
dryrun=$2

CHDIR="pwd >/dev/null && cd"
RSYNC="rsync -rptD -c -v"

ssh $server sh -c "$CHDIR webapp/perl\
    && sudo $RSYNC etc/nginx /etc/nginx $dryrun \
    && sudo $RSYNC etc/mysql /etc/mysql $dryrun \
    && sudo $RSYNC etc/systemd/system/*.service /etc/systemd/system/ $dryrun \
"