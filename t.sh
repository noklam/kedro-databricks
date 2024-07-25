#!/usr/bin/env bash

T=$(echo $(git diff 349bcadaeb4d4e513b3670f409818128f4a408cd) | grep "pyproject.toml" | grep "+version")

if [ -n "$T" ]; then
    echo "Changed version in pyproject.toml"
else
    echo "No changes in version in pyproject.toml"
fi
