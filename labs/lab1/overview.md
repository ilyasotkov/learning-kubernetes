# Lab 1 Overview: How do I create a Kubernetes cluster and how do I maintain it?

In this lab, we'll go from absolute zero to having a bare Kubernetes installation. In [the next lab](/labs/lab2/overview.md), we'll prepare that cluster for production, before actually using it to deploy our applications [in the third lab](/labs/lab3/overview.md).

## What is Kubernetes?

Kubernetes is an open-source platform for consuming cloud **compute, storage, and networking resources**. Kubernetes is also known as the most mature orchestrator for containerized applications.

## Everything as code

In our labs, we keep our use of CLIs and GUIs to a minimum, instead looking to express *the desired state* of any external resources *in code* that can be committed to a git repository and managed with a familiar developer workflow, like [git-flow](/) or [GitHub Flow](/).

The result is that you can always know the state of your infrastructure by simply reading code.

You're you're free to use a text editor of your choice (like Atom or Vim) and you're free to use a git interface of your choice (GitUp, Sourcetree, or Git CLI).

**Imperative verbs**: `get`, `list`, `create`, `delete`, `init`, `add`, `rollback`, etc.
**Declarative verbs**: `apply` and `destroy`.
