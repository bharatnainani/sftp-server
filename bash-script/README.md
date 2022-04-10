# Bash Script

## Overview
This bash script will read the first 20 characters of the uploaded files, store it, and then delete the file . we can use AWS BATCH for running cron job for this script

## How to create your own key pair
```
ssh-keygen -P "" -f "sftp-test-key"
```

## For Production
We can also write lambda function that will trigger when somone upload file and then tha lambda function will call the sftp server and do required action

##  Prerequisites

For private key to access the sftp server I have given you link for **Pocket Scrambler** use the decryption key and store the content into  *keys/* directory

Lets say **bharat** will be the name of the private key

```
cd keys/
vim bharat #add the content of private key and save it
chmod 600 bharat

```

## Deployment

Right now I have 2 files inside sftp server  **upload** and **upload2**
You can check this by running

```
cd ../bash-script/files
sftp -i ../../keys/bharat sftp-user@s-f91d1041f9ce4951a.server.transfer.us-east-1.amazonaws.com
ls

```
## Deploy Bash Script
You need to be inside **files/** directory

```
sh bash.sh

```

## After deployment
You can again log in to the server and check the content. Now you will see 2 different files.previous files has been removed. the content of the file have now 1st 20 character 

```
sftp -i ../../keys/bharat sftp-user@s-f91d1041f9ce4951a.server.transfer.us-east-1.amazonaws.com
ls
!cat upload-character
!cat upload2-character
```
