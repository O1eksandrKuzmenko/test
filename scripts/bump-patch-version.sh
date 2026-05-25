#!/usr/bin/env bash
set -euo pipefail

VERSION_FILE="VERSION"
JS_FILE="version.js"

current=$(tr -d ' \r\n' < "$VERSION_FILE")
IFS='.' read -r major minor patch <<< "$current"
patch=$((patch + 1))
new="${major}.${minor}.${patch}"

echo "$new" > "$VERSION_FILE"
sed -i "s/const APP_VERSION = \"[^\"]*\"/const APP_VERSION = \"${new}\"/" "$JS_FILE"

echo "$new"
