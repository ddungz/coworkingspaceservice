#!/bin/bash

CLUSTER_NAME="coworking-space-cluster"
REGION="us-east-1"

if [ "$1" -a "$2" ]; then
  CLUSTER_NAME=$1
  REGION=$2
fi

eksctl create cluster --name "$CLUSTER_NAME" --region="$REGION" --nodegroup-name coworking-space-nodes --node-type t2.micro --nodes 4 --nodes-min=1 --nodes-max=5
aws eks update-kubeconfig --name "$CLUSTER_NAME" --region="$REGION"