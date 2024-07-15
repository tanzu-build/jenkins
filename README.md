# `tanzu build` & `tanzu deploy` with Jenkins on k8s 
## Benefits

- Drives consistency and security
- Accelerates Dev Velocity / Reduces Developer toil 
- Get started quickly with minimal prerequisites 
- Builds and packages your app as an OCI compliant image with all it’s dependencies
- Creates the YAML needed to deploy your app
- Creates SBOM artifacts for your app’s dependencies
- Easily integrates with existing CI/CD tooling

Check [here](https://docs.google.com/presentation/d/12820dr15lKBuKcb2mxg8EvMKa4WNY0lhOTKF0uIIR4A/edit?usp=sharing) for more context and material.

## About

This repository contains:
- a Docker file to build a dind container with `tanzu cli` in case Jenkis is deployed on a k8s cluster
- jenkins pipelines that use `tanzu cli` to build and deploy artifacts

Note: pipelines use doker registry today by default.

## Prerequisites
[Jenkins](https://github.com/tanzu-build/jenkins/blob/main/Jenkins.md) installed and running:
- is configured to access the images referenced in `Jenkinsfile-dind-tanzu-build`
- Pipeline, Kubernetes and Credentials plugins are installed and configured
- Credentials are configured to access Registries and Repositories  

## How to `tanzu deploy`
[`tanzu deploy`](https://github.com/tanzu-build/jenkins/blob/main/TanzuDeploy.md)

## How to `tanzu build`
[`tanzu build`](https://github.com/tanzu-build/jenkins/blob/main/TanzuBuild.md)

## TODO:
- Add instructions on how to trigger the pipleine through a webhook from repo
- Add support other than Docker registry
- Add instructions to add Custom CA to builder

