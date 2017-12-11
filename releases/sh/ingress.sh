#! /bin/bash
helm init \
&& helm init --upgrade \
&& helm install -f charts/nginx-ingress \
&& helm install -f charts/kube-lego
