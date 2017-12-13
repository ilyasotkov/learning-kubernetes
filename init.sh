#! /bin/bash

gcloud container clusters get-credentials my-cluster --zone europe-west1-d --project ethereal-argon-186217 && \
helm init
helm init --upgrade
echo "Waiting 15 seconds for Tiller pod to start up..."
sleep 15 # Give time for Tiller pod to start
helm install charts/nginx-ingress && helm install charts/kube-lego

# nginx-ingress will create a LoadBalancer service,
# which will give us an external IP address
#
# we get the IP address in GKE console (Discovery & Load Balancing tab)
# then point our DNS servers to it
#
# Now we can install some packages and expose them with Ingress resources!
#
# helm install -f releases/nginx-webpage-devel.yaml charts/nginx-webpage
# helm install -f releases/rails-app-devel.yaml charts/rails-app
# helm install -f releases/jenkins-devel.yaml charts/jenkins
# helm install charts/prometheus
# helm install charts/grafana
# helm install charts/drone
#
# helm ls
# helm upgrade <release-name> <chart-directory>
# helm del --purge <release-name>
