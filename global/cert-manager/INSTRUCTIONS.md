# Cert Manager

## Links

- [Documentation](https://cert-manager.io/docs/installation/helm/)
- [ArtifactHub](https://artifacthub.io/packages/helm/cert-manager/cert-manager)
- [GitHub](https://github.com/cert-manager/cert-manager)
- [Bug Fixed - ClusterIssuer](https://github.com/jetstack/cert-manager/issues/3246)

## 1 - Install the Helm Repo

```bash
helm repo add jetstack https://charts.jetstack.io;
helm repo update;
```

## 2 - Install the Helm Chart

**NOTE:** `crds.enabled` installs the Custom Resource Definitions as part of the install

### Bash

```bash
helm install \
  cert-manager \
  jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version 1.15.1 \
  --set crds.enabled=true;
```

### PowerShell

```powershell
helm install `
  cert-manager `
  jetstack/cert-manager `
  --namespace cert-manager `
  --create-namespace `
  --version 1.15.1 `
  --set crds.enabled=true;
```

## 3 - Apply Config

**WARNING** - This file should be edited first! Change the email.

```bash
kubectl apply -f ./cluster-issuer.yaml;
```
