# Lab 2 overview: How do I turn a bare Kubernetes installation into a production-ready cluster?

In this second lab, we'll turn a bare Kubernetes installation into a production-ready cluster.

## Lab 2 overview

First of all, how do we make sure that each of our teammates gets the access to cluster resources in a secure way? [Authentication: allow access to cluster resources](/labs/lab2/authentication.md)

Second, how do we make sure that teammates are not going to destroy or otherwise mess with each other's work (on purpose or by accident)? [Authorization: limit access to cluster resources](/labs/lab2/)

Third, we'll discover how storage works in Kubernetes and how you can add new storage sources for the cluster to use. [Persistent storage](/labs/lab2/)

Fourth, we'll go deploy an ingress controller and TLS certificate controller to have a secure proxy (`Ingress` objects) for publicly available services. [Networking, load balancing, and ingress management](/labs/lab2/)

Fifth, we'll set up a system for monitoring cluster state and making sure we're alerted if anything bad happens.

Sixth, we'll provide application developers with an ability to deploy their application automatically via a CI (continous integration) pipeline

## Up next

[Authentication: allow access to cluster resources](/labs/lab2/authentication.md)
