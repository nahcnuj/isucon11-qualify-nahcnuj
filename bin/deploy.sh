#!/bin/bash

set -e

server=$1
dryrun=$2

RSYNC="rsync -rptD -c -v"

ssh $server sh -c "\"cd webapp/perl \
    && sudo $RSYNC etc/nginx /etc/nginx $dryrun \
    && sudo $RSYNC etc/mysql /etc/mysql $dryrun \
    && sudo $RSYNC etc/systemd/system/*.service /etc/systemd/system/ $dryrun \
\""