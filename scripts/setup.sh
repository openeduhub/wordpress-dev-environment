#!/usr/bin/env bash

set -e

# Go to repo's root dir
cd -- "$( dirname -- "${BASH_SOURCE[0]}" )"
cd ..

mkdir -p db wordpress

git submodule init

docker compose build