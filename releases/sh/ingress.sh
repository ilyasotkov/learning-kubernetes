#! /bin/bash
helm init \
&& helm init --upgrade \
&& sleep 10 \
&& helm install charts/nginx-ingress/ \
&& helm install charts/kube-lego/
