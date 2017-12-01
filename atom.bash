#!/usr/bin/env bash

# https://discuss.atom.io/t/how-to-completely-uninstall-atom-for-mac/9084/42

files_to_delete=(
  "~/.atom"
  "/usr/local/bin/atom"
  "/usr/local/bin/apm"
  "/Applications/Atom.app"
  "~/Library/Preferences/com.github.atom.plist"
  "~/Library/Application Support/com.github.atom.ShipIt"
  "~/Library/Application Support/Atom"
  "~/Library/Saved Application State/com.github.atom.savedState"
  "~/Library/Caches/com.github.atom"
  "~/Library/Caches/com.github.atom.ShipIt"
  "~/Library/Caches/Atom"
)

for e in "${files_to_delete[@]}"; do
    if [ -d "${e}" ]; then
        echo "Removing existing directory: [${e}] ..."
	mv "${e}" ~/.Trash/
    elif [ -f "${e}" ]; then
        echo "Removing existing file: [${e}] ..."
	mv "${e}" ~/.Trash/
    else
        echo "[${e}] does not exist."
    fi
done
