# Monitoring

Uses Prometheus

## Links

- [ArtifactHub](https://artifacthub.io/packages/helm/prometheus-community/kube-prometheus-stack)
- [GitHub](https://github.com/prometheus-community/helm-charts)

## 1 - Add Helm Repo

```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts;
helm repo update;
```

## 2 - Install Helm Chart

### Bash

```bash
helm install \
  mon \
  prometheus-community/kube-prometheus-stack \
  --namespace monitoring \
  --create-namespace;
```

### PowerShell

```powershell
helm install `
  mon `
  prometheus-community/kube-prometheus-stack `
  --namespace monitoring `
  --create-namespace;
```

## 3 - Monitor Status

```bash
kubectl --namespace monitoring get pods -l "release=mon"
```
