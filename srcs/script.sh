#!/bin/bash

i=0
echo "parent pid: $BASHPID"
(
  echo "child pid: $BASHPID"
  while [ $i -lt 100000 ]; do i=$((i+1)); done # 長いsleepの代わり
  exit 0
) &

while [ $i -lt 1000 ]; do i=$((i+1)); done # 短いsleepの代わり
exit 0
