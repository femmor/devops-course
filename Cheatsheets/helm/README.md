## Helm Cheat Sheet<img align="left" alt="Visual Studio Code" width="26px" src="../images/icons/helm.png" style="padding-right:10px;" /> 
Command | Description | Example 
--- | --- | --- 
`helm init` | Initialize Helm on your local machine | helm init
`helm install` | Create a new deployment in Kubernetes | helm install nginx-ingress stable/nginx-ingress
`helm upgrade` | Upgrade an existing deployment | helm upgrade nginx-ingress stable/nginx-ingress
`helm rollback` | Rollback a release to a previous version | helm rollback nginx-ingress 1
`helm history` | View the revision history of a release | helm history nginx-ingress
`helm search` | Search for charts in repositories | helm search nginx-ingress
`helm list` | List the releases in the current namespace | helm list
`helm delete` | Delete a release from Kubernetes | helm delete nginx-ingress
