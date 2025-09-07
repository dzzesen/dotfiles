#!/usr/bin/env bash

exec foot --app-id=git-diff-float --working-directory="$PWD" --log-level=error git diff
