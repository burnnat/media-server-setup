#!/bin/bash
SRC="/storage/photos/Automatic Upload"
DEST="/storage/videos/Automatic Upload"

find "$SRC" -type f \( -iname \*.mov -o -iname \*.mp4 \) -printf '%h\n' \
  | sort \
  | uniq \
  | xargs -n 1 -d '\n' -I '{}' realpath --relative-to="$SRC" '{}' \
  | xargs -n 1 -d '\n' -I '{}' mkdir -vp "$DEST/{}"

find "$SRC" -type f \( -iname \*.mov -o -iname \*.mp4 \) \
  | xargs -n 1 -d '\n' -I '{}' realpath --relative-to="$SRC" '{}' \
  | xargs -n 1 -d '\n' -I '{}' mv "$SRC/{}" "$DEST/{}"
