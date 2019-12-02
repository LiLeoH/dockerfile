#!/bin/bash

cat /home/dspeak/yyms/hosts.txt >> /etc/hosts
mkdir -p /root/.ssh && cp -r /mnt/hgfs/ssh/* /root/.ssh && chmod 700 /root/.ssh && chmod 600 /root/.ssh/*