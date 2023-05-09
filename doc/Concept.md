## Software comparison

| Tool | minikube | kind | k3d |
| ------------- |:-------------:|:-------------:|:-------------:|
| Intro      | lightweight Kubernetes implementation that creates a VM on your local machine and deploys a simple cluster containing only one node.     |tool for running local Kubernetes clusters using Docker container “nodes”     |a lightweight wrapper to run k3s (Rancher Lab's minimal Kubernetes distribution) in docker     |
| Supported OS and Architectures | linux-amd64, linux-arm, linux-arm64, linux-ppc64le, linux-s390x, windows-amd64, darwin-amd64, darwin-arm64     |linux-amd64,linux-arm64, windows-amd64, darwin-amd64, darwin-arm64     |linux-amd64, linux-arm, linux-arm64, linux-384, windows-amd64, darwin-amd64, darwin-arm64     |
| Automation      | With additional package     | Available by default    | Auto deployment feature     |
| Features      | LoadBalancer, Multi-cluster , NodePorts - using minikube service, Persistent Volumes, Ingress, Dashboard, Container runtimes, Configure apiserver and kubelet options via command-line flags, Supports common CI environments     | Multi-node, Go packages implementing cluster creation, image build, etc., A command line interface (kind) built on these packages., Docker image(s) written to run systemd, Kubernetes, etc., kubetest integration also built on these packages (WIP)     |  Containerd & runc, Flannel for CNI, CoreDNS, Metrics Server, Traefik for ingress, Klipper-lb as an embedded service load balancer provider, Kube-router netpol controller for network policy, Helm-controller to allow for CRD-driven deployment of helm manifests, Kine as a datastore shim that allows etcd to be replaced with other databases, Local-path-provisioner for provisioning volumes using local storage, Host utilities such as iptables/nftables, ebtables, ethtool, & socat     |
| Pros      | Ease of use, Development, Studying     | Very easy to install, Cluster very easy to deploy, Use docker containers, multinode     | Lightweight, Easy, Replication Controller, Scale Services     |
| Cons      | Limited scope, Performance     | Network external access to the cluster more complicated, lack of dashboard and tracking    | does not come with a distributed database by default. This limits the control plane's high availability capabilities     |

## Demo

Demo of k3s which I prefer for the performance 

[![demo](./demo.svg)](https://asciinema.org/a/583701?autoplay=1)


## Conclusion

Each tool has its own unique features and benefits. If you value ease of use and a built-in dashboard, Minikube may be the best choice for you. If you need a highly customized cluster and value flexibility, KinD may be the best choice for you. If you value speed and lightweight design, k3d may be the best choice for you.
Ultimately, the best way to determine which tool is right for you is to try them all out and see which one works best for your needs. With any of these tools, you can quickly and easily spin up a Kubernetes cluster on your local machine and start developing and testing your applications with ease.