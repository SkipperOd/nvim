#! /bin/bash/env bash

session=$(find ~ ~/github ~/bitbucket ~/Library/'Mobile Documents'/com~apple~CloudDocs/vaults -mindepth 1 -maxdepth 1 -type d | fzf)

session_name=$(basename "$session" | tr . _)

if ! tmux has-session -t "$session_name" 2>/dev/null; then
	tmux new-session -d -s "$session_name" -c "$session" -n "$session_name"
	tmux new-window -c "$session" -n "code" -t "$session_name"
fi

tmux switch-client -t "$session_name"
