# Cloud DevOps Engineer Capstone Project - LongPB

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/longpb91/udacity_aws_devops_capstone/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/longpb91/udacity_aws_devops_capstone/tree/master)

## Project Overview

The project will be applied skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program. These include:

* Working in AWS
* Using Circle CI to implement Continuous Integration and Continuous Deployment
* Building Kubernetes clusters
* Building Docker containers in pipelines

### What did I do?

Using a CI/CD approach, we built a Docker image and use Kubernetes cluster to deploy the flask app.

The project includes the following main tasks:
- Linting using Pylint and Hadolint to check the sytnax of the Application file and Dockerfile.
- Build a Docker Image and push to DockerHub to containerized application
- Create Kubernetes cluster on AWS using eksctl.
- Deploy application on Kubernetes
- Using a rolling-update strategy to update application
- Delete the cluster

#### Note CicleCI Variables

You need to set up the following environment variables in your CircleCI project with values:

* AWS_ACCESS_KEY_ID: you need to create an IAM user
* AWS_SECRET_ACCESS_KEY: you need to create an IAM user
* AWS_DEFAULT_REGION: choose a default region (exp: us-east-1)
* DOCKERHUB_USERNAME: your dockerhub username
* DOCKERHUB_PASSWORD: your dockerhub password
* EC2_KEY_PAIR: the EC2 keypair
  
### Main Files

* [Makefile](./Makefile): the file to run install dependencies of the app and the lint test
* [config.yml](.circleci/config.yml): to build the CI/CD pipeline in CircleCI
* [app.py](./app.py): the sample python/flask app
* [Dockerfile](./Dockerfile): the Docker image's specification file
* [cluster.yml](./eks_cluster.yml): EKS cluster definition file
* [flask_deployment](./flask_deployment): deploying app definition file
* [create_cluster.sh](./create_cluster.sh): scripts file to run command that create clusters
* [deploy_k8s.sh](./deploy_k8s.sh): scripts file to run command that deploy the app on kubernetes
* [requirements.txt](./requirements.txt): file to install dependencies of the app