#!/bin/bash

echo "===> LocalAI All-in-One (AIO) container starting..."

GPU_ACCELERATION=false
GPU_VENDOR=""


PROFILE="cpu" # default to cpu
echo "PROFILE : ${PROFILE}"

export MODELS="${MODELS:-/aio/cpu/text-to-text.yaml}"

echo "MODELS : ${MODELS}"

check_vars

echo "===> Starting LocalAI[$PROFILE] with the following models: $MODELS"

exec /build/entrypoint.sh "$@"

