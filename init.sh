#! /bin/bash
gcloud container clusters get-credentials my-cluster --zone europe-west1-d --project ethereal-argon-186217 && \
helm init
helm init --upgrade
sleep 15 # Let Tiller Pod launch
helm install charts/nginx-ingress && helm install charts/kube-lego

# Then Point DNS servers to GCE LoadBalancer IP
# Then release all charts that use Ingress resources

# helm install charts/nginx-webpage
# helm install charts/rails-app
# helm install charts/prometheus
# helm install charts/grafana
# helm install charts/jenkins
# helm install charts/drone
