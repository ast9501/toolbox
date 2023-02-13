#!/bin/sh

for d in /var/lib/kubelet/pods/*; do
  p_u=$(basename "$d")
  kubectl get po -A -o json | \
    jq --arg pod_uuid "$p_u" -r '.items[]
      | select(.metadata.uid == $pod_uuid)
      | "uuid \($pod_uuid) is \(.metadata.name)"'
done
