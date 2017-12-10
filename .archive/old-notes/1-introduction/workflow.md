# Cluster Administration Workflows

## High-level steps

1. Create an auto-scaling high-availability Kubernetes cluster using cloud providers' hardware resources (virtual hardware): compute, storage, networking.

2. Set up (bootstrap) the initial swarm software stack:

- Ingress
- Automatic TLS certificates
- CI Pipeline
- Git service
- Advanced monitoring system

4. Allow team members to authenticate in order to access the cluster API.

5. Make sure every team member only has access to cluster resources that he actually needs to have access to (least priviledge principle).

6. Deploy a production-ready `hello-world-rails-app`.

## Further administration tasks

The cluster now has a state that is *declared* in our cluster git repository. We can now take advantage of the git flow version control system this way:

1. Make a feature or hotfix branch.
2. Commit changes.
3. Cause a `kubectl apply` to update the status of the cluster's components to sync with the repo.
