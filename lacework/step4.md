The customer also did not add in the Lacework agent token.

i) Grab the agent token from the Lacework console. (Reference:https://support.lacework.com/hc/en-us/articles/360036425594-Create-Agent-Access-Tokens-and-Download-Agent-Installers)

ii) Set the token in the environment
Replace copied_agent_access_token in the below command
`export token=copied_agent_access_token`{{execute}}

(Reference: https://github.com/lacework/lacework-agent-releases#install-using-daemonset-deployment-files-for-kubernetes)

iii) Use sed to replace the 'LaceworkAccessToken' in the lacework-cfg-k8s.yaml file
`sed -i.bak "s/\${LaceworkAccessToken}/${token}/g" /opt/lacework_agent/3.3.5/lacework-cfg-k8s.yaml`{{execute}}

iv) Replace the lacework-k8s-config.yaml for the changes to take effect
`kubectl replace -f /opt/lacework_agent/3.3.5/lacework-cfg-k8s.yaml`{{execute}}
