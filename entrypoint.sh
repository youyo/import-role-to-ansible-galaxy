#!/bin/sh

set -ue

ansible-galaxy login --github-token="${GITHUB_TOKEN}"
ansible-galaxy import `echo ${GITHUB_REPOSITORY} | cut -d'/' -f1` `echo ${GITHUB_REPOSITORY} | cut -d'/' -f2`
