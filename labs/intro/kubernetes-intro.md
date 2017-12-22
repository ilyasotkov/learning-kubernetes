# Introduction to Kubernetes

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Introduction to Kubernetes](#introduction-to-kubernetes)
	- [What is Kubernetes? 🤔](#what-is-kubernetes-)
	- [What are the benefits of using Kubernetes?](#what-are-the-benefits-of-using-kubernetes)
	- [Kubernetes inputs and outputs](#kubernetes-inputs-and-outputs)
		- [Inputs](#inputs)
		- [Outputs](#outputs)
	- [Up next](#up-next)

<!-- /TOC -->

## What is Kubernetes? 🤔

Kubernetes is a platform for consuming cloud compute, storage, and networking resources. Kubernetes is also known as the most popular way to bring containerized (dockerized) software to production at scale.

## What are the benefits of using Kubernetes?

If you already know the benefits of developing software using Docker (or containers in general), then *there you got it*. Kubernetes is just a really good a way to deploy that software to a cloud.

## Kubernetes inputs and outputs

If Kubernetes seems complicated, try looking at the big picture: the inputs you are expected to give to the **Kubernetes API server** (`kube-apiserver
`) and the outputs you are getting in return.

### Inputs

In terms of inputs, you need two things:

1. One or more generic (suitable for any environment on any cluster) **container images** for your service or application, located in a private or public container image registry (e.g. [gcr.io](https://gcr.io/), [quay.io](/), [hub.docker.com](/)). This input is ultimately expressed as a URL for the container image so that it can be pulled later ⬇️

    Example: `ilyasotkov/rails-react-boilerplate:latest`

2. One or more **YAML files** with Kubernetes API object specs. There's only a handful of top-level Kubernetes API objects which you'd be authoring yourself, each belongs to one of the three *cloud resource* categories:

    | Compute | Storage | Networking |
    | --- | --- | --- |
    | `Deployment` | `PersistentVolumeClaim` | `Service` |
    | `DaemonSet` | | `Ingress` |
    | `StatefulSet` | | |
    | `Job` | | |
    | `CronJob` | | |

### Outputs

Once you send that YAML package to the Kubernetes API server, you should expect to have highly-available, production-grade application or service running in your cloud. It's that simple!

*Note:* to make Kubernetes API YAML code dry and reusable, we'll use the [Helm package manager](https://helm.sh) for templating and packaging everything together

## Up next

[Compare Kubernetes to deploying software directly onto bare metal or virtual machines](/labs/intro/kubernetes-compare.md)
