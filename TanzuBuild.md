## How to use (`tanzu build`)

1. Create a pipeline with the following parameters (GIT_CREDENTIALS_ID contains a token)

![Jenkins parameters](png/params.png)

2. Edit `Jenkinsfile-dind-tanzu-build`:
- change <YOUR REGISTRY> to match the registry that contains the doker+tanzu-cli image built at step 1.
- change default values to match your own defaults

3. configure an SCM pipeline

![Jenkins SCM pipleine](png/pipeline.png)

![Jenkins SCM pipleine](png/SCMpipeline.png)

4. Create a GitOps repository to host the deployment rtifacts using the same nme of the one that contains the source code and adding `-ops:
   if the source code is stored in:
   `https://github.com/tanzu-build/tanzu-build-samples`
   create:
   `https://github.com/tanzu-build/tanzu-build-samples-ops`

   OR remove the last step of the pipeline.

