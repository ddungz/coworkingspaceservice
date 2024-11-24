#!/bin/bash

REPOSITORY_NAME="coworking/coworkingrepo"
REGION="us-east-1"

if [ "$1" -a "$2" ]; then
  REPOSITORY_NAME=$1
  REGION=$2
fi

aws ecr create-repository --repository-name "$REPOSITORY_NAME" --region="$REGION"
