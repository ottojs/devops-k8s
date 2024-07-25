# Setup - Windows

## Important

This expands on the [foundation configuration](https://github.com/ottojs/devops/blob/main/docs/windows.md) which you should review first.

## Recommended Packages

```powershell
sudo choco install git -y;
sudo choco install kubernetes-cli -y;
sudo choco install kubernetes-helm -y;
sudo choco install kubectx -y;
sudo choco install kubens -y;
# Optional if you do local container development
# Download Podman Desktop: http://podman.io/docs/installation#windows
sudo choco install podman-cli -y;
```

## Install K8s Cluster Configuration File

1. Save Kubernetes config file at `~/.kube/config`
1. Verify with `kubectl get namespaces`
