#!/usr/bin/env sh
trivy client --clear-cache
trivy client --debug --remote "${TRIVY_REMOTE_SERVER}" --token "${TRIVY_TOKEN}" "${DOCKER_IMAGE}"