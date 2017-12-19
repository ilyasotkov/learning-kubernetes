# Lab 1 Overview: How do I create a Kubernetes cluster and how do I maintain it?

In this first lab, we'll go from absolute zero to having a bare Kubernetes installation. In [the next lab](/labs/lab2/overview.md), we'll prepare that cluster for production, and [in the third lab](/labs/lab3/overview.md) we'll use the cluster to deploy several generic and custom apps.

## Lab Overview

In this lab, we will use [Terraform](/) to declaratively spin up a Kubernetes cluster. I want this guide to be as simple as possible, so we're gonna use a *hosted* Kubernetes solution. "Hosted" means that we'll let a cloud provider install and preconfigure the cluster for us instead of doing that manually.

You might now be thinking "Aren't we cheating here? And it's gonna be more expensive, isn't it?"

First of all, I wouldn't call automation cheating. If you want to get familiar with how Kubernetes really works, go through these guides (be prepared to spend at least a couple of weeks on these, Kubernetes setup *is really complicated*):

- [Setup section of the Kubernetes Docs](/)
- [Kubernetes the Hard Way by Kelsey Hightower](/) ([Ansible](/))

Secondly, hosted Kubernetes will cost you no more than normal compute instances ([AKS pricing](https://azure.microsoft.com/en-us/pricing/details/container-service/), [GKE pricing](https://cloud.google.com/kubernetes-engine/pricing)). That's because cloud providers know that their long-term competitive advantage in cloud computing is state-of-the-art data centers, not proprietary software.

## Up next

[Create a Kubernetes cluster](/labs/lab1/create-cluster.md)
