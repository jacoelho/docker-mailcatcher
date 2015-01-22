#!/bin/bash -ex

for SCRIPT in /build/setup/*.sh; do
  if [ -f $SCRIPT -a -x $SCRIPT ]; then
    $SCRIPT
  fi
done

