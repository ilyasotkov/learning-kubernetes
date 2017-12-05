# TLS certificates in Kubernetes

<https://kubernetes.io/docs/concepts/cluster-administration/certificates/>
<https://kubernetes.io/docs/tasks/administer-cluster/encrypt-data/>
<https://kubernetes.io/docs/tasks/tls/managing-tls-in-a-cluster/>
<https://kubernetes.io/docs/tasks/tls/certificate-rotation/>
<https://kubernetes.io/docs/admin/kubelet-tls-bootstrapping/>
<https://kubernetes.io/docs/admin/kubelet-authentication-authorization/>

<https://kubernetes.io/docs/admin/accessing-the-api/>
<https://kubernetes.io/docs/admin/authentication/>

## TLS certificates in Kubernetes

### Root CA certificate

TODO

### API server certificate

*kubelet*: Hey, are you the `apiserver` that you claim to be?
*apiserver*: Yes sir, I am. And the **Cluster CA** can verify that.

### Client certificate

*apiserver*: Hm, are you the client you claim to be?
*client (e.g. kubectl)*: Yes sir, I am. And the **Cluster CA** can verify that.
