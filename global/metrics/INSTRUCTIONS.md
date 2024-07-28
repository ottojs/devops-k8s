# Metrics

## Links

- [ArtifactHub](https://artifacthub.io/packages/helm/metrics-server/metrics-server)
- [GitHub](https://github.com/kubernetes-sigs/metrics-server)

## 1 - Add Helm Repo

```bash
helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server/;
help repo update;
```

## 2 - Install Helm Chart

```bash
helm upgrade --install metrics-server metrics-server/metrics-server --namespace metrics --create-namespace;
```
