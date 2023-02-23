#!/bin/bash/

DIR_NAME=$1
ARCHIVE_NAME=$2
COMPRESSION_TYPE=$3

{
tar -cf $ARCHIVE_NAME.tar $DIR_NAME -I$COMPRESSION_TYPE |
openssl enc -aes-256-cbc -iter 10000 -pass file:pass.txt -out $ARCHIVE_NAME.tar.enc
} 1>/dev/null 2>>error.log