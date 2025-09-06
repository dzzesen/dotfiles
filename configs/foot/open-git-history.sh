#!/usr/bin/env bash

exec foot --app-id=git-history-float --working-directory="$PWD" --log-level=error git history
