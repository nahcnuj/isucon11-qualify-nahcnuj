#!/bin/bash

sudo rsync -rptD -c -v etc/nginx /etc/nginx
sudo rsync -rptD -c -v etc/mysql /etc/mysql
sudo rsync -rptD -c -v etc/systemd/system/*.service /etc/systemd/system/
