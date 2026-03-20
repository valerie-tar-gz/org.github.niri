#!/bin/bash

if [ ! -L "/home/linuxbrew/.linuxbrew" ]; then
    mkdir -p /home/linuxbrew
    mkdir -p "$XDG_DATA_HOME/.linuxbrew"
    ln -s "$XDG_DATA_HOME/.linuxbrew" /home/linuxbrew/.linuxbrew
fi

if [ ! -d "/home/linuxbrew/.linuxbrew/bin" ]; then
    echo "Initializing Homebrew..."
    cp -r /app/brew/* /home/linuxbrew/.linuxbrew/
fi

export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"

exec "$@"
