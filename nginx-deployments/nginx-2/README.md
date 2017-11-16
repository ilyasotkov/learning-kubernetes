# nginx with a single ConfigMap and subPath hack

Same as `nginx-1` but using a hack with subPath to avoid replacing the whole etc/nginx path.

The proposed solution orginated from <https://github.com/kubernetes/kubernetes/issues/44815#issuecomment-297077509>.

## ❌ DO NOT USE! Updates to configMap don't work.

Changing the ConfigMap, then updating via `kubectl apply -f .` doesn't work as of now.
