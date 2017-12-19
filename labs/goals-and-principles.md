# Goals and principles of this guide

## 📌 Goals

- Learn to set up and administer Kubernetes clusters of any scale
- Establish a smooth *declarative* workflow for deploying containerized applications and services to Kubernetes clusters

## ♻️ Everything as code

In our labs, we keep our use of CLIs and GUIs to a minimum, instead looking to express the desired state of any external resources **as code** that can be committed to a git repository and managed with a familiar developer workflow, like [git-flow](https://github.com/nvie/gitflow/) or [GitHub Flow](https://guides.github.com/introduction/flow/).

The result is that you can always look at the state of your infrastructure by simply reading code. You also have to do less work when you need to upgrade your cluster. You will just make changes to the code, commit the changes to the git repository, and have the CI pipeline do the rest to match the state of the code to the state of the external cloud resources.

You're therefore free to use a text editor of your choice (like Atom or Vim) and you're free to use a Git interface of your choice (like GitUp, Sourcetree, or Git CLI).

| Workflow | Actions |
| --- | --- |
| 👎 Imperative  | `get`, `list`, `create`, `delete`, `init`, `add`, `rollback`, and many more |
| 👍 Declarative  | `apply` |

## Simple and structured, opinionated

Kubernetes is fairly complex, and let's be honest here, [Kubernetes documentation](https://kubernetes.io/docs) is a hot mess.

This guide strives to bring operational simplicity to Kubernetes by using principles of effective software development for both administering and using Kubernetes clusters.

Here's what we are aiming at:

1. All clusters must be created and destroyed using (at most) one command! Currently, that's `terraform apply` and `terraform destroy` coupled with using hosted Kubernetes solutions from large and established cloud providers.

2. We ditch the use of `kubectl` completely. We use [Helm](https://helm.sh/) exclusively to talk to the Kubernetes API. [We're also looking for a missing tool to declaratively manage Helm releases!](https://github.com/kubernetes/helm/issues/3089)

## Up next

[Lab 1 Overview: How do I create a Kubernetes cluster and how do I maintain it?](/labs/lab1/overview.md)
