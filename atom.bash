#!/usr/bin/env bash

# https://discuss.atom.io/t/how-to-completely-uninstall-atom-for-mac/9084/42

files_to_delete=(
  "${HOME}/.atom"
  "/usr/local/bin/atom"
  "/usr/local/bin/apm"
  "/Applications/Atom.app"
  "${HOME}/Library/Preferences/com.github.atom.plist"
  "${HOME}/Library/Application Support/com.github.atom.ShipIt"
  "${HOME}/Library/Application Support/Atom"
  "${HOME}/Library/Saved Application State/com.github.atom.savedState"
  "${HOME}/Library/Caches/com.github.atom"
  "${HOME}/Library/Caches/com.github.atom.ShipIt"
  "${HOME}/Library/Caches/Atom"
)

for e in "${files_to_delete[@]}"; do
    if [ -d "${e}" ]; then
        echo "Removing existing directory: [${e}] ..."
	mv "${e}" "${HOME}/.Trash/"
    elif [ -f "${e}" ]; then
        echo "Removing existing file: [${e}] ..."
	mv "${e}" "${HOME}/.Trash/"
    else
        echo "[${e}] does not exist."
    fi
done
