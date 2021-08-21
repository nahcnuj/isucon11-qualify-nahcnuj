#!/bin/bash

set -e

server=$1

ssh $server sh -c "\"cd webapp/perl \
    && git pull \
\"" &
