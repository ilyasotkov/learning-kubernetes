# Persistent volumes in Kubernetes

Concepts/PersistentVolume: <https://kubernetes.io/docs/concepts/storage/persistent-volumes/>
Walkthrough: <https://kubernetes.io/docs/tasks/configure-pod-container/configure-persistent-volume-storage/>

PersistentVolume is a **cluster resource**.

PVs are volume plugins like Volumes, but have a lifecycle independent of any individual pod that uses the PV.

## PersistentVolumeClaims

A `PersistentVolumeClaim` is a request for storage by a user.
