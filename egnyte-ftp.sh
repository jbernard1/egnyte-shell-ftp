#!/bin/sh
EGNYTE_DOMAIN=""
EGNYTE_USERNAME=""
EGNYTE_PASSWORD=""
EGNYTE_FTP_URL=""

FILE_TO_UPLOAD=""

while getopts ":a:p:" opt; do
  case "$1" in
    --domain=*) EGNYTE_DOMAIN="${1#*=}"
    ;;
    --username=*) EGNYTE_USERNAME="${1#*=}"
    ;;
    --password=*) EGNYTE_PASSWORD="${1#*=}"
    ;;
    --ftp_url=*) EGNYTE_FTP_URL="${1#*=}"
    ;;
    --file=*) FILE_TO_UPLOAD="${1#*=}"
    ;;
    *) 
        echo "Invalid option -$OPTARG"
        exit 1
  esac
  shift
done

curl -k -T "$FILE_TO_UPLOAD" --ftp-ssl --ftp-pasv -u "$EGNYTE_USERNAME\$$EGNYTE_DOMAIN:$EGNYTE_PASSWORD" $EGNYTE_FTP_URL
