#!/bin/bash

sed "s/SCRIPT_PLACEHOLDER/$(cat bridge-filtering | base64 -w 0)/" ./template/daemonset.yaml > ./manifests/daemonset.yaml
sed "s/SCRIPT_PLACEHOLDER/$(cat bridge-filtering | base64 -w 0)/" ./template/daemonset_openshift.yaml > ./manifests/daemonset_openshift.yaml
