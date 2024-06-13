#!/usr/bin/env zsh

# Exit if the 'eza' command could not be found
if ! (( $+commands[eza] )); then
    echo "WARNING: 'eza' command not found"
    return
fi

ness_params="-AgMx --group-directories-first --hyperlink --icons --git -F=always --color=always --time-style='+%a %Y-%m-%d %H:%M '"
# Create alias override commands using 'eza'
alias l="eza -lah $ness_params"
alias ls="eza $ness_params"
alias ll="eza -l $ness_params"
alias la="eza -la $ness_params"
alias lt="eza -lahs old $ness_params"
alias tree="eza -lah --tree --level=2 $ness_params"
