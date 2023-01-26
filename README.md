# cxp-hello-helm

Simplest possible cloud native java application based on Spring Boot deployed to Kubernetes with `helm`.

As demonstrated in training session.

## Docker Pull Command
`docker pull docker.cloudtrain.aws.msgoat.eu/cxp/cxp-hello-helm`

## Run this application 

``` 
docker run --name cxp-hello -p 8080:8080 docker.cloudtrain.aws.msgoat.eu/cxp/cxp-hello-helm
```

## HOW-TO Build and test the Docker image locally

In order 
* to build the Spring Boot application
* to build a Docker image for it  
* and to run system tests on the locally started Docker container

run the following command:

```shell
mvn clean verify -P pre-commit-stage
```

## HOW-TO Build the Docker image and push it to the CloudTrain Docker Registry

In order
* to build the Spring Boot application
* to build a Docker image for it
* to run system tests on the locally started Docker container
* and to push the Docker image to the CloudTrain Docker Registry 

run the following command:

```shell
mvn clean install -P commit-stage
```

## HOW-TO Deploy the Docker image to Kubernetes using Helm

In order
* to deploy the Docker image to Kubernetes with Helm

run the following command:

```shell
mvn verify -P deploy-to-k8s-stage
```

