#!/bin/bash

src=/home/devops/shell_scripts
tgt=/tmp/backups1

filename=$(date +'%d-%m-%y-%H-%M').tar

echo "backup started for $filename"

tar -cvf $tgt/$filename -C $src .

echo "backup completed"
