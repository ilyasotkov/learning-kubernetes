# An nginx Deployment with explicit defaults

Same as `nginx-1` but with all defaults presented explicitly.

## ✅ Create via minikube

```sh
kubectl apply -f .
minikube service nginx-service
```

## ✅ Rolling Updates

Test updating a configMap by making changes to `html-configmap.yaml`, then applying the changes declaratively:

```sh
kubectl apply -f .
```

## ✅ Rollbacks

Rollbacks work (for images) but are pretty useless in the declarative workflow because:

1. If you made a change to a file, it must be reflected in a git commit.
2. If you want to roll back, you don't want to do it manually with `kubectl`, but rather go back to the previous git commit and run `kubectl apply -f` again.

👎 Don't do this:

```sh
kubectl apply -f . # rollout / create a deployment
# In `nginx-deployment.yaml`, change image nginx:1.11.0-alpine to nginx:1.13.6-alpine
kubectl apply -f . # apply changes
# oops, realize a mistake has been made
kubectl rollout undo -f nginx-3/nginx-deployment.yaml # rollback to previous version
```

👍 Do this:
```sh
# commit code changes to git
kubectl apply -f . # rollout / create a deployment
# oops, realize a mistake has been made, go to previous commit
git checkout HEAD~1

kubectl apply -f . # apply previous commit = roll back
```
