#!/bin/sh
# Uploads the contents of the current directory to the production S3 bucket. 
# Requires the AWS CLI configured with AWS credentials. See https://aws.amazon.com/cli/

aws s3 sync . s3://splitlightglass.com --region ap-southeast-2 --exclude ".git/*"
