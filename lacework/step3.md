It appears they mixed up the steps and did not deploy the config map.

Docs Reference: https://github.com/lacework/lacework-agent-releases#install-using-daemonset-deployment-files-for-kubernetes

The agent was downloaded to /opt/lacework_agent/3.3.5/

Deploy the lacework-cfg YAML

`kubectl create -f /opt/lacework_agent/lacework-cfg-k8s.yaml`{{execute}}
