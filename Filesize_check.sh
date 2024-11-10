#!/bin/bash

file=<path_to_file>

if [ -f $file ]
then
 filesize=$(stat -c%s "$file")
 echo "file size is $filesize bytes"
fi
