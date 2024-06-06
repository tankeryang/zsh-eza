#!/usr/bin/env zsh

# Exit if the 'eza' command could not be found
if ! (( $+commands[eza] )); then
    echo "WARNING: 'eza' command not found"
    return
fi

ness_params="-AgMx --group-directories-first --hyperlink --icons --git -F=always --color=always --time-style='+%a %Y-%m-%d %H:%M '"
# Create alias override commands using 'eza'
alias k="eza -lah $ness_params"
alias ks="eza $ness_params"
alias kl="eza -l $ness_params"
alias ka="eza -la $ness_params"
alias tree="eza -lah --tree --depth=2 $ness_params"
