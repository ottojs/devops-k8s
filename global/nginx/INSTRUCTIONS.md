# Ingress Nginx

## Links

- [Documentation](https://kubernetes.github.io/ingress-nginx/)
- [ArtifactHub](https://artifacthub.io/packages/helm/ingress-nginx/ingress-nginx)
- [GitHub](https://github.com/cert-manager/cert-manager)

## 1 - Add Repo for `ingress-nginx`

```bash
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx;
helm repo update;
```

## 2 - Install Helm Chart

### Bash

```bash
helm install \
  ngx \
  ingress-nginx/ingress-nginx \
  --namespace ingress-nginx \
  --create-namespace;
```

### Windows PowerShell

```powershell
helm install `
  ngx `
  ingress-nginx/ingress-nginx `
  --namespace ingress-nginx `
  --create-namespace;
```

## 3 - Wait for LoadBalancer IP

After applying, a new IP will be assigned to nginx.  
You can view it by running this command.

```bash
kubectl get service --namespace ingress-nginx ngx-ingress-nginx-controller --output wide --watch
```

## 4 - Apply Configuration

**WARNING** - You might need to disable "use-proxy-protocol" depending on your hosting provider

```bash
kubectl apply -f ./ingress.nginx.config.yaml;
```

## 5 - Annotate LoadBalancer with Proxy Protocol (if needed)

### DigitalOcean

#### Bash

```bash
kubectl annotate service \
  ngx-ingress-nginx-controller \
  service.beta.kubernetes.io/do-loadbalancer-enable-proxy-protocol="true" \
  -n ingress-nginx;
```

#### PowerShell

```powershell
kubectl annotate service `
  ngx-ingress-nginx-controller `
  service.beta.kubernetes.io/do-loadbalancer-enable-proxy-protocol="true" `
  -n ingress-nginx;
```
