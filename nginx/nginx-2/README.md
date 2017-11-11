# nginx with a single ConfigMap and subPath hack

## DO NOT USE! Updates to configMap don't work.

Same as `nginx-1` but using a hack with subPath to avoid replacing the whole etc/nginx path.

The proposed solution orginated from <https://github.com/kubernetes/kubernetes/issues/44815#issuecomment-297077509>.
