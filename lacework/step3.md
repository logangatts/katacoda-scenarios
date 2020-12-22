It appears they mixed up the steps and did not deploy the config map.
(Reference: https://github.com/lacework/lacework-agent-releases#install-using-daemonset-deployment-files-for-kubernetes)

The agent was downloaded to /opt/lacework_agent/3.3.5/

Deploy the lacework-cfg-k8s.yaml
`kubectl create -f /opt/lacework_agent/3.3.5/lacework-cfg-k8s.yaml`{{execute}}

The pods should change to a "Running" state after up to 30 seconds
`watch kubectl get pods`{{execute}}

(Use CTRL+C to exit)
