# Jenkins

Reference [Bitnami Jenkins](https://bitnami.com/stack/jenkins) for installing Jenkins.

If Jenkins is running on k8s check steps 1. and 2., they are optionals if Jenkins is running on VMs.

1. build the images for the agent to run `tanzu cli`:
- if using self signed certificates for your registry add the Custom CA to the stack of your builder 
- build and push the image for the DIND with `tanzu cli`, change <YOUR REGISTRY> to match the registry to push the image to:
```
cd Image
# targeting an AMD platform 
export DOCKER_DEFAULT_PLATFORM=linux/amd64

docker build . -t <YOUR REGISTRY>/docker:dind-tanzu-build
docker push <YOUR REGISTRY>/docker:dind-tanzu-build
cd ..
```
2. create a volume claim to cache layers bewteen runs. Edit k8s/pvc.yaml and change <YOUR STORAGE CLASS> with the name of the storage class, then connect to your k8s cluster running Jenkins and create the pvc:
 ```
cd k8s
kubectl apply -f pvc.yaml
cd ..
```
