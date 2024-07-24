# Windows Install

## Versions

- PowerShell v7.4.3

## Install Chocolatey

1. Please follow the [Installation Instructions](https://chocolatey.org/install)
1. Verify installation with `choco list`
1. Use an Admin terminal to run `choco install gsudo -y` to enable "sudo"
1. There is upcoming "sudo" support in Windows 11, but that's still in beta. Using `gsudo` is recommended for now.

## Install Packages

**WARNING** - Generally speaking, I'd recommend doing as much setup as possible in WSL (Windows Subsystem for Linux). The reason is Chocolatey can have issues and does not have as stable of experience as Homebrew on macOS or Linux package managers (apt, yum, etc.). You can delete and rebuild the WSL system at any time, helping contain any problems without affecting your main system

```powershell
sudo choco install git -y
sudo choco install kubernetes-cli -y
sudo choco install kubernetes-helm -y
sudo choco install kubectx -y
sudo choco install kubens -y
```

## Install Cluster Configuration File

1. Save Kubernetes config file at `~/.kube/config`
