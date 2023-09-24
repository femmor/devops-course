
# Kubernetes CheatSheets<img align="left" width="30px" alt="Terminal" src="../images/icons/kubernetes.png" style="padding-right:10px;" /> 

## Minikube

Command | Description | Example
------ | ------ | ------
`minikube start` | Start a local Kubernetes cluster | minikube start --vm-driver=virtualbox
`minikube dashboard` | Access the Kubernetes dashboard running within the minikube cluster | minikube dashboard
`minikube addons` | List all of the addons available within minikube | minikube addons list
`minikube ssh` | Log into or run a command on a machine with SSH; similar to running kubectl exec | minikube ssh -- docker ps
`minikube stop` | Stops a running local Kubernetes cluster | minikube stop
`minikube delete` | Deletes a local Kubernetes cluster | minikube delete
`minikube service` | Open the Kubernetes dashboard in a browser | minikube service list
`minikube tunnel` | Create an SSH tunnel to securely access the apiserver from outside the cluster | minikube tunnel
`minikube port-forward` | Forward one or more local ports to a pod | minikube port-forward <POD-NAME> 8080:80

## Kubectl

**Cluster Management**
Command | Description | Example
------ | ------ | ------
`kubectl config` | Modify kubeconfig files | `kubectl config view`
`kubectl cluster-info` | Display addresses of the master and services | `kubectl cluster-info`
`kubectl get nodes` | List nodes in the cluster | `kubectl get nodes`

**Resource Management**
Command | Description | Example
------ | ------ | ------
`kubectl get` | List resources | `kubectl get pods`
`kubectl describe` | Show detailed information about a resource | `kubectl describe pod <name>`
`kubectl create` | Create a resource from a file or from stdin | `kubectl create -f my-manifest.yaml`
`kubectl apply` | Apply a configuration to a resource by filename or stdin | `kubectl apply -f my-manifest.yaml`
`kubectl delete` | Delete resources by filename, stdin, resource and name, or by resources and label selector | `kubectl delete pod <name>`
`kubectl label` | Update the labels on a resource | `kubectl label pods <name> <label-key>=<label-value>`
`kubectl scale` | Scale a deployment, replica set, or replication controller | `kubectl scale --replicas=3 deployment/my-deployment`

**Debugging & Troubleshooting**
Command | Description | Example
------ | ------ | ------
`kubectl exec` | Execute a command on a container in a pod | `kubectl exec -ti <pod-name> -- <command>`
`kubectl logs` | Print the logs for a container in a pod | `kubectl logs -f <pod-name>`
`kubectl port-forward` | Forward one or more local ports to a pod | `kubectl port-forward <pod-name> 3000:3000`

## Helm
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


