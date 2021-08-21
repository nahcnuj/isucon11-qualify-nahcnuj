#!/bin/bash

set -e

bin/batch.sh sync
bin/batch.sh deploy
bin/batch.sh restart app
bin/batch.sh restart nginx
bin/batch.sh restart mysql