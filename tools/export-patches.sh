#!/usr/bin/env bash
# Exporta la patch-queue desde el checkout de desarrollo (noop-src, rama `victor`)
# hacia patches/ de este repo. Uso:
#   tools/export-patches.sh /ruta/a/noop-src [tag-base]
# Si no se pasa tag-base, usa el tag del último release de ryanbr/noop alcanzable en ese clon.
set -euo pipefail

SRC="${1:?Uso: export-patches.sh /ruta/a/noop-src [tag-base]}"
HERE="$(cd "$(dirname "$0")/.." && pwd)"
TAG="${2:-$(git -C "$SRC" describe --tags --abbrev=0 victor 2>/dev/null)}"

rm -f "$HERE"/patches/*.patch
git -C "$SRC" format-patch --no-numbered --zero-commit "$TAG"..victor -o "$HERE/patches"
ls -1 "$HERE/patches"
echo "OK — parches exportados desde $TAG..victor. Commitea patches/ y push."
