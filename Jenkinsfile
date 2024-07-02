
pipeline {
  // agent { label 'tanzu-build' }
  agent {
    kubernetes {
      yamlFile './tanzuPod.yaml'
    }
  }
  tools { git 'Default' }

  stages {   
    stage('Cloning Git') {
      steps {
        checkout([
                  $class: 'GitSCM',    
                  gitTool: 'Default',
                  branches: [[name: '*/mgb']],
                  userRemoteConfigs: [[credentialsId: 'mbrodi-gitlab-basic', url: 'https://gitlab.eng.vmware.com/tanzu-ne-growth/tanzu-build-samples.git']]
        ])
      }
    }
    stage('Build') {
      steps {
          sh 'tanzu config eula accept'
          sh 'tanzu plugin install --group vmware-tanzu/app-developer'
          sh 'cd /home/jenkins/agent/workspace/build'
          sh 'tanzu build config --build-plan-source-type=file --build-plan-source /home/jenkins/agent/workspace/build/platform-config.yaml'
          sh 'tanzu build --output-dir /tmp/tanzu'
          sh 'sleep 90000'
      }
    }
  }
    // stage('List tanzu-build') {
    //   steps {
    //     sh 'set'
    //     sh "echo OUTSIDE_CONTAINER_ENV_VAR = ${CONTAINER_ENV_VAR}"
    //     container('tanzu-build') {
    //       sh 'set'
    //       sh "echo TANZUBUILD_CONTAINER_ENV_VAR = ${CONTAINER_ENV_VAR}"
    //       sh 'ls -al'
    //       sh 'tanzu version'
    //     }
    //   }
    // }
    
    // stage('Run tanzu build') {
    //   steps {
    //     sh 'set'
    //     sh "echo OUTSIDE_CONTAINER_ENV_VAR = ${CONTAINER_ENV_VAR}"
    //     container('tanzu-build') {
    //       sh 'echo TAZNU_BUILD_CONTAINER_ENV_VAR = ${CONTAINER_ENV_VAR}'
    //       sh 'ls -al'
    //     }
    //   }
    // }
}

