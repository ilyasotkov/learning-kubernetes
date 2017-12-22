# Goals and principles of this guide

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Goals and principles of this guide](#goals-and-principles-of-this-guide)
	- [Goals](#goals)
	- [Everything as code](#everything-as-code)
	- [The future of Kubernetes in DevOps (we're not there yet)](#the-future-of-kubernetes-in-devops-were-not-there-yet)
	- [Simple worflow](#simple-worflow)
	- [Responsibilities](#responsibilities)
		- [Cloud provider responsiblities](#cloud-provider-responsiblities)
		- [Our responsiblities](#our-responsiblities)
	- [Humans deal with logical abstractions, not technical constraints](#humans-deal-with-logical-abstractions-not-technical-constraints)
		- [Cluster updates](#cluster-updates)
	- [Up next](#up-next)

<!-- /TOC -->

## Goals

- Learn to set up and administer Kubernetes clusters of any scale
- Establish a smooth *declarative* workflow for deploying containerized applications and services to Kubernetes clusters

## Everything as code

In our labs, we keep our use of CLIs and GUIs to a minimum, instead looking to express the desired state of any external resources **as code** that can be committed to a git repository and managed with a familiar developer workflow, like [git-flow](https://github.com/nvie/gitflow/) or [GitHub Flow](https://guides.github.com/introduction/flow/).

The result is that you can always look at the state of your infrastructure by simply reading code. You also have to do less work when you need to upgrade your cluster. You will just make changes to the code, commit the changes to the git repository, and have your continous integration pipeline do the rest to match the state of the code to the state of the external cloud resources.

You're therefore free to use a text editor of your choice (like Atom or Vim) and you're free to use a Git interface of your choice (like GitUp, Sourcetree, or Git CLI).

| Workflow | Actions |
| --- | --- |
| 👎 Imperative  | `get`, `list`, `create`, `delete`, `init`, `add`, `rollback`, and many more |
| 👍 Declarative  | `apply` |

## The future of Kubernetes in DevOps (we're not there yet)

## Simple worflow

1. Declaratively (via 1 command) create a cluster and deploy all supporting tools (Ingress Controller + Lego + Docker image registry + Jenkins / Drone).
2. Deploy a hello-world app.

## Responsibilities

### Cloud provider responsiblities

A cloud provider of our choice manages all hardware (data centers). It also monitors compute / memory / storage resource pressure and auto-scales VMs when needed. It's designed for ~100% availability and ~100% durability.

### Our responsiblities

On our part (as a user of a cloud provider), we manage a cluster git repository and handle all required changes to the cluster state by making changes to cluster files in the repository. Changes are then handled via a CI pipeline (git-based workflow, either *git-flow* or *GitHub Flow*):

1. Commit changes manually via `git commit` or a GUI and push to remote

The CI pipeline then will:

1. Run all tests / checks to make sure everything works and is ready to be deployed
2. Deploy it into production if checks are successful

## Humans deal with logical abstractions, not technical constraints

A cluster should define a **logical boundary** and not be constrained by any technical requirement. It's fine for clusters to be large (e.g. a company cluster).

Every cluster has its codebase. A company should always have a **staging cluster** to allow DevOps engineers to test cluster configuration.

### Cluster updates

Updates to VMs (nodes) should **always** be rolling and the update process should be abstracted from the DevOps engineers. Want a new version of Kubernetes? Just bump the version in cluster configuration repo and commit changes. Let the tooling (CI + cloud provider interface) to handle the rest.

We've gone a long way from every tech company managing its own data centers. And there's no reason to not go *all the way* with container-based infrastructure.

A streamlined DevOps experience should be the norm, not the exception.

## Up next

[Lab 1 Overview: How do I create a Kubernetes cluster and how do I maintain it?](/labs/lab1/overview.md)
