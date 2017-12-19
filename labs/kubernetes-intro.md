# Introduction to Kubernetes

## 🤔 What is Kubernetes?

Kubernetes is a platform for consuming cloud compute, storage, and networking resources. Kubernetes is also known as the most popular way to bring containerized (dockerized) software to production at a scale.

### What are the benefits of using Kubernetes?

If you already know the benefits of developing software using Docker (or containers in general), then *there you got it*. Kubernetes is just a really good a way to deploy that software to a cloud.

### Kubernetes inputs and outputs

If Kubernetes seems complicated, try looking at the big picture: the inputs you are expected to have and the outputs you are getting in return.

In terms of inputs, you need two things:

1. Have a *generic* (suitable for any environment and any cluster) container image for you service or application
2. Have a collection of *Kubernetes API YAML* objects. The package will reference the generic container image, configure it for your specific environment, and specify exacly *how* you want to run it in the cloud

**Note:** to make Kubernetes API YAML code dry and reusable, we'll use the [Helm package manager](https://helm.sh) for templating and packaging everything together.

Once you feed the YAML objects to the *Kubernetes API Server*, you should expect to have highly-available, production-grade application or service running in your cloud. It's that simple!

## Up next

[Compare Kubernetes to bare-metal and raw VM deployments](/labs/kubernetes-compare.md)
