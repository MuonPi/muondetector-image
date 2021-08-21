# +++ Version control integration
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' check-for-staged-changes true
zstyle ':vcs_info:*' unstagedstr '%F{red}×'
zstyle ':vcs_info:*' stagedstr '%F{yellow}+'
zstyle ':vcs_info:git:*' formats       "(%s)-[%F{blue}%b%u%c%f] "
zstyle ':vcs_info:git:*' actionformats "(%s)-[%F{red}%a%f:%b%u%c%f] "
# --- Version control integration
