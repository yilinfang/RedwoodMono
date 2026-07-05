#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
VER=$(cat Iosevka-version.txt)
echo "Building Redwood Mono from Iosevka ${VER}..."
docker build \
	--output type=local,dest=dist \
	--build-arg VER="${VER}" \
	.
echo "Done. Fonts in dist/RedwoodMono/ (TTF/ hinted, TTF-Unhinted/ unhinted)."
