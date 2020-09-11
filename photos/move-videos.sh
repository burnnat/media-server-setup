#!/bin/bash
SRC="/storage/photos/Automatic Upload"
DEST="/storage/videos/Automatic Upload"

find "$SRC" -type f -iname \*.mov -printf '%h\n' \
  | sort \
  | uniq \
  | xargs -n 1 -d '\n' -I '{}' realpath --relative-to="$SRC" '{}' \
  | xargs -n 1 -d '\n' -I '{}' mkdir -vp "$DEST/{}"

find "$SRC" -type f -iname \*.mov \
  | xargs -n 1 -d '\n' -I '{}' realpath --relative-to="$SRC" '{}' \
  | xargs -n 1 -d '\n' -I '{}' mv "$SRC/{}" "$DEST/{}"
