We're not out of the woods yet.

The customer also did not add in the agent token. Grab the agent token from the Lacework console. (Reference:https://support.lacework.com/hc/en-us/articles/360036425594-Create-Agent-Access-Tokens-and-Download-Agent-Installers)

Set the token in the environment
(Reference: https://github.com/lacework/lacework-agent-releases#install-using-daemonset-deployment-files-for-kubernetes)

'export token=<copied_agent_access_token>'{{execute}}'
(Replace <copied_agent_access_token> in the above command)

Use sed to replace the 'LaceworkAccessToken' in the lacework-cfg-k8s.yaml file

'sed -i.bak "s/\${LaceworkAccessToken}/${token}/g" lacework-cfg-k8s.yaml'{{execute}}
