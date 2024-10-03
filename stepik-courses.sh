#!/usr/bin/env bash
set -euo pipefail

curl -s "https://stepik.org/api/course-lists?page=1" | jq -r '.["course-lists"][] | .title' | awk '{gsub(/"/, ""); print}'