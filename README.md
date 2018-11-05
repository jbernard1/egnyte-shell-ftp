# egnyte-shell-ftp
A shell script for uploading files to egnyte


## Ussage
```shell
$ ./egnyte-ftp.sh --domain=$EGNYTE_DOMAIN --username=$EGNYTE_USERNAME --password=$EGNYTE_PASSWORD --ftp_url=$EGNYTE_FTP_URL --file=$FILE_TO_UPLOAD
```

## Params
```YAML
EGNYTE_DOMAIN:
  - String
  - Your egnyte created domain
EGNYTE_USERNAME:
  - String
  - Your egnyte username
EGNYTE_PASSWORD:
  - String
  - Your egnyte password
EGNYTE_FTP_URL:
  - String
  - FTP protocol along with your shared folder location
  - ftp://ftp-$EGNYTE_DOMAIN.egnyte.com/PATH/TO/SHARED/FOLDER
FILE_TO_UPLOAD:
  - String
  - File path of the file you wish to upload
  - /PATH/TO/FILE
```
