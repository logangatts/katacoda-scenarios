mkdir /opt/lacework_agent/
wget https://github.com/lacework/lacework-agent-releases/releases/download/v3.3.5/3.3.5.tgz -P /opt/lacework_agent/
tar -xvzf /opt/lacework_agent/3.3.5.tgz -C /opt/lacework_agent/
kubectl create -f /opt/lacework_agent/3.3.5/lacework-k8s.yaml
echo "agent install done"
