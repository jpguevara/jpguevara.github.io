#!/usr/bin/env bash
set -e

if [ -z "$1" ]; then
  echo "Usage: $0 file.md"
  exit 1
fi

INPUT="$1"

# ensure the file exists
if [ ! -f "$INPUT" ]; then
  echo "Error: $INPUT not found"
  exit 1
fi

# strip .md and replace with .html
BASENAME=$(basename "$INPUT" .md)
OUTPUT="${BASENAME}.html"

SCRIPT_DIR=$(dirname -- "$0")
pandoc "$INPUT" -s --template="$SCRIPT_DIR/template.html" --standalone -o "posts/$OUTPUT"

echo "Built $OUTPUT"
