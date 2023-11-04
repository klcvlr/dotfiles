#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=$(find ~/Workspaces/personal ~/Workspaces/stonal ~/Workspaces/zenika ~ -mindepth 1 -maxdepth 1 -type d | fzf)
fi

if [[ -z $selected ]]; then
    exit 0
fi

selected_name=$(basename "$selected" | tr . _)
tmux_running=$(pgrep tmux)

# Start a new session if tmux is not running at all
if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s "$selected_name" -c "$selected"
    exit 0
fi

# Create a new session if it doesn't exist, but do not attach or switch to it
if ! tmux has-session -t="$selected_name" 2> /dev/null; then
    tmux new-session -ds "$selected_name" -c "$selected"
fi

# Only switch to the session if we are inside an existing tmux session
if [[ -n $TMUX ]]; then
    tmux switch-client -t "$selected_name"
else
    # If not in a tmux session, attach to the session
    tmux attach-session -t "$selected_name"
fi

