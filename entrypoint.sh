#!/bin/sh
set -e

[ -n "${INPUT_HOST}" ] && export RACK_URL="https://convox:${INPUT_PASSWORD}@${INPUT_HOST}"
[ -n "${INPUT_PASSWORD}" ] && export CONVOX_PASSWORD=${INPUT_PASSWORD}
[ -n "${INPUT_RACK}" ] && export CONVOX_RACK=${INPUT_RACK}

release=$(convox build --app "${INPUT_APP}" --external --id)

echo "::set-output name=release::${release}"
