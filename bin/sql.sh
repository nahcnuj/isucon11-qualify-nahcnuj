#!/bin/bash

set -e

server=$1
sqlfile=$2

ssh $server sh -c "\"cd webapp/perl \
    && mysql -uisucon -pisucon isucondition <$sqlfile \
\""
