#!/bin/bash
A=$(ps aux | grep -v grep | grep -v keepalive.sh | grep $1 | awk '{print $2}')
if [ -z "$A" ]
then
  echo 'Not running'
else
  echo 'Running'
fi
