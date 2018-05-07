# System Configuration

This stow package manages system-level configuration (as opposed to user-owned
configs).

## Installing 

Clone the repo onto your machine:

    git clone https://github.com/lhanson/Linux-Configuration.git /stow

Overlay the managed files onto the root filesystem. NOTE: watch the output for conflicts as `stow` won't overwrite existing
files by default. If there's a conflict, you can move the existing file out of the way and try again.

    /stow/setup.sh

## Updating

Updates are performed by managing the git repo in `/stow`. Managed files are symlinked into this directory, so repository
changes take effect immediately.
