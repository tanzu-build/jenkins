#!/bin/sh
touch /home/jenkins/platform-config.yaml
tanzu config set env.TANZU_CLI_ADDITIONAL_PLUGIN_DISCOVERY_IMAGES_TEST_ONLY harbor-repo.vmware.com/tanzu_cli_stage/plugins/plugin-inventory:latest
export TANZU_CLI_CEIP_OPT_IN_PROMPT_ANSWER=no 
tanzu config eula accept
tanzu plugin install --group vmware-tanzu/app-developer
tanzu build config --build-plan-source-type=file --build-plan-source platform-config.yaml --containerapp-registry harbor.h2o-4-11809.h2o.vmware.com/tanzubuild
