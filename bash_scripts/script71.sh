#!/bin/bash
#Get the versions of the DevOps tools
DOCKER_VERSION=$(docker --version | cut -d ' ' -f3)
KUBERNETES_VERSION=$(kubectl version --short | grep "server" | cut -d ':' -f2)
ANSIBLE_VERSION=$(ansible --version | head -n1 | cut -d ' ' -f2)
PYTHON_VERSION=$(python --version | cut -d ' ' -f2)
GIT_VERSION=$(git --version | cut -d ' ' -f3)

#Format the report message
REPORT="DevOps tools Version Report:
Docker: $DOCKER_VERSION
Kubernetes: $KUBERNETES_VERSION
Ansible: $ANSIBLE_VERSION
Git: $GIT_VERSION
Python: $PYTHON_VERSION"
#Log the report message
logger -t script71.sh "DevOps Tools Version Report: $REPORT"
#Send an email report
SUBJECT="DevOps Tools Version Report"
echo "$REPORT" #| mailx -s "$SUBJECT" nvxfrost@mail.ru
#Log the end of the script
logger -t script71.sh "Finished DevOps Tools Version Report"
