# Persistent volumes in Kubernetes

## Block level storage vs File level storage

<https://stonefly.com/resources/what-is-file-level-storage-vs-block-level-storage>

### File level storage

- Simple to use and implement
- Stores files and directories
- Visible to the system and clients the same way

### Block level storage

- Looks and acts like a normal hard drive
- Except it's connected remotely

## Documentation links

Concepts/PersistentVolume: <https://kubernetes.io/docs/concepts/storage/persistent-volumes/>
Walkthrough: <https://kubernetes.io/docs/tasks/configure-pod-container/configure-persistent-volume-storage/>

PersistentVolume is a **cluster resource**.

PVs are volume plugins like Volumes, but have a lifecycle independent of any individual pod that uses the PV.

## PersistentVolumeClaims

A `PersistentVolumeClaim` is a request for storage by a user.

Cluster administrators need to be able to offer a variety of PersistentVolumes that differ in more ways than just size and access modes, without exposing users to the details of how those volumes are implemented.
