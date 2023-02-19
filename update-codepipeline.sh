#!/bin/bash

CODEPIPELINE_CFN_STACK_NAME="github-wordpress-codepipeline"

set -eu

aws cloudformation update-stack \
        --capabilities CAPABILITY_IAM \
        --stack-name $CODEPIPELINE_CFN_STACK_NAME \
        --template-body file://codepipeline.yaml
        