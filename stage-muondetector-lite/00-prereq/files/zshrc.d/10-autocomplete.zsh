zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' max-errors 5
zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' rehash true
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always
zstyle ':completion:*' menu yes select
compinit
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=2000
