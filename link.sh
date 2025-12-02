#!/bin/bash
set -euo pipefail

if ! command -v stow >/dev/null 2>&1; then
    echo "Error: stow is not installed" >&2
    exit 1
fi

for dir in $(find . -mindepth 1 -maxdepth 1 -type d ! -path "./.*") ; do
    dir="${dir#./}"
    echo "stowing $dir"
    stow -t "$HOME" "$dir"
done
