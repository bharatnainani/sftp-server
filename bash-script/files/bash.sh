#!/bin/bash

files=`sftp -i ../../keys/bharat sftp-user@s-f91d1041f9ce4951a.server.transfer.us-east-1.amazonaws.com <<EOF
ls
EOF`
files=`echo $files|sed "s/.*sftp> ls//"` 
mkdir character

(
  for file in $files; do
    echo get $file
    echo `head -c 20 $file` > character/$file-character
    echo put character/$file-character
    echo rm $file
  done
) | sftp -i ../../keys/bharat sftp-user@s-f91d1041f9ce4951a.server.transfer.us-east-1.amazonaws.com

for file in $files; do
  rm -rf character/
done