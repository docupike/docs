#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

BASE_DIR="$(dirname "$(readlink -f "$0")")/../.."

cd "$BASE_DIR"

docker compose \
    build \
    --pull \
    --build-arg USER_ID="$(id -u)" \
    --build-arg GROUP_ID="$(id -g)"
docker compose run env npm install
