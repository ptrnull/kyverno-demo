#n/bin/bash
echo "Running: kubectl create ns mutate-ns"
kubectl create ns mutate-ns
echo "Waiting 2 secs"
sleep 2
echo "Running: kubectl get ns mutate-ns  --show-labels"
kubectl get ns mutate-ns --show-labels
