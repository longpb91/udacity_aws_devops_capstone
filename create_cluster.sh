#!/usr/bin/env bash

if aws eks list-clusters | grep -q "longpb-cluster"
then
  echo "cluster existed!"
else
	cat cluster.yml 
    eksctl create cluster --config-file=cluster.yml
fi