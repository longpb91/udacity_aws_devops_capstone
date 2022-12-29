#!/usr/bin/env bash

if aws eks list-clusters | grep -q "longpb-cluster"
then
  echo "cluster existed!"
else
	cat cluster.yaml 
    eksctl create cluster --config-file=cluster.yml
fi