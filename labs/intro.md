# Project Introduction and Concepts

## What is Kubernetes?

Kubernetes is an open-source platform for consuming cloud **compute, storage, and networking resources**. Kubernetes is also known as the most mature orchestrator for containerized applications.

**Kubernetes inputs**:

- Container images (created from Dockerfiles) in some private or public container image registry
- A collection of Kubernetes API objects expressed as YAML markup

**Kubernetes output**:

A scalable production-grade application or service running in a cloud.

## Everything as code

In our labs, we keep our use of CLIs and GUIs to a minimum, instead looking to express **the desired state** of any external resources **in code** that can be committed to a git repository and managed with a familiar developer workflow, like [git-flow](/) or [GitHub Flow](/).

The result is that you can always know the state of your infrastructure by simply **reading code**. You also have to do less work, simply telling the computer to read from the source repository and make sure the state of the infrastructure is just like you declared it.

You're free to use a text editor of your choice (like Atom or Vim) and you're free to use a Git interface of your choice (like GitUp, Sourcetree, or Git CLI).

| Workflow | Actions |
| --- | --- |
| Imperative | `get`, `list`, `create`, `delete`, `init`, `add`, `rollback`, and many more |
| Declarative | `apply` and `destroy` |
