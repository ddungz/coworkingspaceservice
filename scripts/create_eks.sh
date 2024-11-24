#!/bin/bash

CLUSTER_NAME="coworking-cluster"
REGION="us-east-1"

if [ "$1" -a "$2" ]; then
  CLUSTER_NAME=$1
  REGION=$2
fi

eksctl create cluster --name "$CLUSTER_NAME" --region="$REGION" --nodegroup-name coworking-nodes --node-type t2.micro --nodes 1 --nodes-min=1 --nodes-max=3
