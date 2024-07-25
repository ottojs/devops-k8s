# DevOps - Kubernetes (k8s)

## Purpose

Use this to deploy an Otto.js application into your Kubernetes cluster.

## Requirements

Here are the versions these files were tested on.  
It might work on older versions, but it is not guaranteed.

Also, this is intended for a "fresh" Kubernetes cluster.  
If you have an existing deployment, some edits may be required.  
Pay special attention to the `global` directory files.

### Supported Software

- Kubernetes v1.30.x (CLI and Server)

### Supported Providers

- [DigitalOcean](https://www.digitalocean.com/) - [Kubernetes Dashboard](https://cloud.digitalocean.com/kubernetes/clusters/)
- [Linode](https://www.linode.com/) - [Kubernetes Dashboard](https://cloud.linode.com/kubernetes/clusters)

### Useful Tools

- [yamllint](https://github.com/adrienverge/yamllint) v1.35.1
- [kube-linter](https://github.com/stackrox/kube-linter) v0.6.8
- [kubectx and kubens](https://github.com/ahmetb/kubectx) v0.9.5
- [kubetui](https://github.com/sarub0b0/kubetui) v1.5.2
