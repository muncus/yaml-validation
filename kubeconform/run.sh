#!/bin/sh
#
#Run kubeconform tool on a repo that looks like kubernetes-engine-samples.
datadir=$1

#TODO: there are still 7 errors in the k-e-s repo, which look legit.
kubeconform --summary --strict \
  --ignore-filename-pattern cloudbuild.yaml \
  --ignore-filename-pattern ".*\.json" \
  --ignore-filename-pattern "/helm" \
  --ignore-filename-pattern kustomization.yaml \
  --ignore-filename-pattern "\.github/" \
  --ignore-filename-pattern alert-policy.yaml \
  --ignore-filename-pattern dashboard.yaml \
  --ignore-missing-schemas \
  $datadir
