#!/usr/bin/env bash

set -e

read -r -n 1 -p 'Containers stopped? [y/N]'; echo; [[ $REPLY =~ ^[Yy]$ ]] || exit 1

now=$(date --iso-8601=seconds)
rsync -av db wordpress "backup/dev-sync/"

cp -al "backup/dev-sync" "backup/$now"