# Kubernetes Storage

## Kubernetes Volumes

<https://kubernetes.io/docs/concepts/storage/volumes/>

A Kubernetes volume has an explicit lifetime - the same as the pod that encloses it.

Consequently, a volume outlives any containers that run within the Pod, and data is preserved across Container restarts. Of course, when a Pod ceases to exist, the volume will cease to exist, too.

That's why volumes are declared in a pod's context and not as a Kubernetes object.

## Volumes vs VolumeMounts

VolumesMounts don't care about how a volume was created.

```yaml
volumeMounts:
  - name: nginx-configmap
    mountPath: /etc/nginx
  - name: html-configmap
    mountPath: /html
```

Could be a configMap, could be something else.
