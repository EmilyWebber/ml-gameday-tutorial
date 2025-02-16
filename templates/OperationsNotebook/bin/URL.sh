#! /bin/bash 
__dirname="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export AWS_PROFILE=$(node -e "console.log(require('$__dirname'+'/../config').profile)")
export AWS_DEFAULT_REGION=$(node -e "console.log(require('$__dirname'+'/../config').region)")

BUCKET=$(node -e "console.log(require('$__dirname'+'/../config').assetBucket)")
PREFIX=$(node -e "console.log(require('$__dirname'+'/../config').assetPrefix)")
REGION=$AWS_DEFAULT_REGION

PUBLIC="http://s3.amazonaws.com/$BUCKET/$PREFIX/templates/operations-notebook.json"

echo "========================Public=============="
echo "template url:"
echo "$PUBLIC"
echo ""
echo "console launch url:"
echo "https://console.aws.amazon.com/cloudformation/home?region=$REGION#/stacks/new?stackName=OperationsNotebook&templateURL=$PUBLIC"

