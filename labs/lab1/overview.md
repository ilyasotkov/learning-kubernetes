# Lab 1 Overview: How do I create a Kubernetes cluster and how do I maintain it?

In this first lab, we'll go from absolute zero to having a bare Kubernetes installation. In [the next lab](/labs/lab2/overview.md), we'll prepare that cluster for production, before actually using it to deploy our applications [in the third lab](/labs/lab3/overview.md).

## ♻️ Everything as code

In our labs, we keep our use of CLIs and GUIs to a minimum, instead looking to express **the desired state** of any external resources **in code** that can be committed to a git repository and managed with a familiar developer workflow, like [git-flow](/) or [GitHub Flow](/).

The result is that you can always look at the state of your infrastructure by simply **reading code**. You also have to do less work when you need to upgrade your cluster. You will just make changes to the code, commit the changes to the git repository, and have the CI pipeline do the rest to match the state of the code to the state of the external cloud resources.

You're therefore free to use a text editor of your choice (like Atom or Vim) and you're free to use a Git interface of your choice (like GitUp, Sourcetree, or Git CLI).

| Workflow | Actions |
| --- | --- |
| 👎 Imperative  | `get`, `list`, `create`, `delete`, `init`, `add`, `rollback`, and many more |
| 👍 Declarative  | `apply` |

## Up next

[Create a Kubernetes cluster](/)
