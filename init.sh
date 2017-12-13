#! /bin/bash

helm init
helm init --upgrade
sleep 15
helm install charts/nginx-ingress && helm install charts/kube-lego

# Then Point DNS servers to GCE LoadBalancer IP
# Then release all charts that use Ingress resources

# helm install charts/nginx-webpage
# helm install charts/rails-app
# helm install charts/prometheus
# helm install charts/grafana
# helm install charts/jenkins
# helm install charts/drone
