# Lab 2 overview: How do I turn a bare Kubernetes installation into a production-ready cluster?

In this second lab, we'll turn a bare Kubernetes installation into a production-ready cluster.

## Lab 2 overview

First of all, we need to make sure that *anyone on our team who needs cloud compute, storage, and networking for either production or non-production purposes*, gets it. How do we make sure that each of our teammates gets the access to cluster resources in a secure way? [Authentication: allow access to cluster resources](/labs/lab2/authentication.md)

Second, we need to make sure that teammates are not going to destroy or otherwise mess with each other's work (on purpose or by accident). [Authorization: limit access to cluster resources](/labs/lab2/)

Third, we'll discover how storage works in Kubernetes and how you can add new storage sources for the cluster to use. [Persistent storage](/labs/lab2/)

Fourth, we'll go deploy an ingress controller and kube-lego to securely proxy for publicly available services. [Networking, load balancing, and ingress management](/labs/lab2/)

## Up next

[Authentication: allow access to cluster resources](/labs/lab2/authentication.md)
