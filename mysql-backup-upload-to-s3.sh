#!/bin/bash

#Declaring Variables to make it more Dynamic

username=$1
password=$2
hostname=$3
db_name=$4
file_name=$(date +%H-%M-%S)-mydb.sql
aws_access_key=$5
aws_secret_key=$6

export AWS_ACCESS_KEY_ID=$aws_access_key
export AWS_SECRET_ACCESS_KEY=$aws_secret_key

echo "Creating Dump"

mysqldump -u $username -p$password -h $hostname $dbname > /tmp/$file_name

echo "Uploading Dump to s3"

aws s3 cp /tmp/$file_name s3://backup-mysql-bucket2022
