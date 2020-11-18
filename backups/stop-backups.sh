#!/bin/bash

# List all backup plans, extract names, and issue stop commands.
cbb plan -l \
  | cut -d' ' -f1 \
  | head -n -1 \
  | tail -n +2 \
  | xargs -n 1 -d '\n' -I '{}' cbb plan -s "{}"
