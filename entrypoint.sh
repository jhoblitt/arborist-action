#!/bin/sh

export GITHUB_TOKEN
GITHUB_TOKEN="$(printenv INPUT_REPO-TOKEN)"

/bin/arborist "$@"
