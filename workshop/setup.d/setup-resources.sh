#!/bin/bash

envsubst < kubernetes-yaml/deployment.template.yaml > kubernetes-yaml/deployment.yaml && rm kubernetes-yaml/deployment.template.yaml

cat >> ~/.bashrc << EOF
set -o vi
EOF
