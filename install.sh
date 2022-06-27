#!/bin/bash
#kubectl config set-context --current --namespace=default
kubectl create -f https://raw.githubusercontent.com/kyverno/kyverno/main/config/install.yaml
