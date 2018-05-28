#!/bin/sh

echo "Setting up system-level configuration files..."
set -e	# exit immediatly on failure

# Path to this script, will be used as the stow directory
STOW_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [[ $EUID -eq 0 ]]; then
	stow --restow --dir=$STOW_DIR --target /etc etc
else
	sudo stow --restow --dir=$STOW_DIR --target /etc etc
fi


printf "\n\n###### Done!\n"
printf "\nNow simply maintain this clone with push/pull to stay in sync!\n"
printf "* Note: this script is idempotent, re-run to install newly pulled dotfiles\n\n"
