#!/bin/sh
# Build hugo, uploads the contents of the public directory to the production S3 bucket, invalidates cloudfront. 
# Requires the AWS CLI configured with AWS credentials. See https://aws.amazon.com/cli/

hugo -D

aws s3 sync ./public s3://splitlightglass.com --region ap-southeast-2 --exclude ".git/*"

aws cloudfront create-invalidation --distribution-id EQ9UK8VMORZRD --paths "/index.html" "/" "/contact" "/contact/" "/work" "/work/" "/js" "/js/script.js"