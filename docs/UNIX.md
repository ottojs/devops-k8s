# Setup - Unix

## Important

This expands on the foundation configuration which you should review first

- [macOS](https://github.com/ottojs/devops/blob/main/docs/macos.md)
- [Linux](https://github.com/ottojs/devops/blob/main/docs/linux.md)

## Recommended Packages

### macOS

```bash
brew install git;
brew install kubernetes-cli;
brew install helm;
brew install kubectx; # Also installs kubens
brew install yamllint;
brew install kube-linter;
# Optional if you do local container development
# Download Podman Desktop: http://podman.io/docs/installation#macos
# or Docker Desktop https://www.docker.com/get-started/
```

### Linux - Debian

```bash
sudo apt-get install -y git;
sudo apt-get install -y kubernetes-client;
sudo apt-get install -y kubectx;
sudo apt-get install -y yamllint;

# Golang
# https://go.dev/dl/
# https://go.dev/doc/install
sudo rm -rf /usr/local/go || echo "No existing Golang installation to remove";
wget https://go.dev/dl/go1.22.5.linux-amd64.tar.gz;
sudo tar -C /usr/local -xzf ./go1.22.5.linux-amd64.tar.gz;
rm ./go1.22.5.linux-amd64.tar.gz;
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc;
source ~/.bashrc;
go version;

# Helm Repo
# https://helm.sh/docs/intro/install/#from-apt-debianubuntu
curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null;
sudo apt-get install apt-transport-https --yes;
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list;
sudo apt-get update;
sudo apt-get install helm;

# kube-linter
wget https://github.com/stackrox/kube-linter/releases/download/v0.6.8/kube-linter-linux.tar.gz
tar -xzf kube-linter-linux.tar.gz kube-linter;
rm kube-linter-linux.tar.gz;
mv kube-linter /usr/local/bin/;

# Optional if you do local container development
sudo apt-get install -y podman podman-compose podman-docker;
```

### Linux - Arch

```bash
sudo pacman -S --needed git;
sudo pacman -S --needed kubectl;
sudo pacman -S --needed helm;
sudo pacman -S --needed kubectx;
sudo pacman -S --needed yamllint;
sudo pacman -S --needed kube-linter;
# Optional if you do local container development
sudo pacman -S --needed podman; # Docker Replacement
sudo pacman -S --needed podman-compose;
sudo pacman -S --needed podman-docker;
```

## Install K8s Cluster Configuration File

1. Save Kubernetes config file at `~/.kube/config` (or use symlink)
1. `chmod 600 ~/.kube/config`
1. You may consider using the `kubectx` tool to switch between multiple clusters
1. Verify with `kubectl get namespaces`
