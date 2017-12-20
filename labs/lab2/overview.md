# Lab 2: How do I turn a bare Kubernetes installation into a production-ready cluster?

In this second lab, we'll turn a bare Kubernetes installation into a production-ready cluster.

## Overview

### [Authentication: allow access to cluster resources](/labs/lab2/authentication.md)

First of all, how do we make sure that each of our teammates gets the access to cluster resources in a secure way?

### [Authorization: limit access to cluster resources](/labs/lab2/)

Second, how do we prevent teammates from messing with each other's work (on purpose or by accident)?

<br>

### [Persistent storage](/labs/lab2/)

Third, we'll discover how storage works in Kubernetes and how you can add new storage sources for the cluster to use.

### [Networking, load balancing, and ingress management](/labs/lab2/)

Fourth, we'll deploy an ingress controller (`ingress-nginx`) and TLS certificate controller (`kube-lego`) to have a secure proxy (`Ingress` objects) for publicly available applications.

### [Monitoring and alerting](/labs/lab2/)

Fifth, we'll set up a system for monitoring cluster state and making sure we're alerted if anything bad happens.

<br>

### [Continous Integration (CI) tools](/labs/lab2/)

Sixth, we'll provide application developers with an ability to deploy their application automatically via a CI (continous integration) pipeline.

## Up next

[Authentication: allow access to cluster resources](/labs/lab2/authentication.md)
