# `tanzu build` & `tanzu deploy` with Jenkins on k8s 

## About

This repository contains:
- a Docker file to build a dind container with `tanzu cli` in case Jenkis is deployed on a k8s cluster
- a jenkins pipeline that use `tanzu cli` to build and deploy artifacts

## Prerequisites
[Jenkins](https;//github.com/tanzu-build/jenkins/blob/main/Jenkins.md) installed and running:
- is configured to access the images referenced in `Jenkinsfile-dind-tanzu-build`
- Pipeline, Kubernetes and Credentials plugins are installed and configured
- Credentials are configured to access Registries and Repositories  

## How to `tanzu deploy`
[`tanzu deploy`](https://github.com/tanzu-build/jenkins/blob/main/TanzuDeploy.md)

## How to `tanzu build`
[`tanzu build`](https://github.com/tanzu-build/jenkins/blob/main/TanzuBuild.md)

## TODO:
- Add instructions to add Custom CA to builder
- Add support other than Docker registry
