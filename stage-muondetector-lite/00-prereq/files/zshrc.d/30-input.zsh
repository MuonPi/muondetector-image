# +++ key input handling
[[ -n ${key[Backspace]} ]] && bindkey "${key[Backspace]}" backward-delete-char
[[ -n ${key[Insert]} ]] && bindkey "${key[Insert]}" overwrite-mode
[[ -n ${key[Home]} ]] && bindkey "${key[Home]}" beginning-of-line
[[ -n ${key[PageUp]} ]] && bindkey "${key[PageUp]}" up-line-or-history
[[ -n ${key[Delete]} ]] && bindkey "${key[Delete]}" delete-char
[[ -n ${key[End]} ]] && bindkey "${key[End]}" end-of-line
[[ -n ${key[PageDown]} ]] && bindkey "${key[PageDown]}" down-line-or-history
[[ -n ${key[Up]} ]] && bindkey "${key[Up]}" up-line-or-search
[[ -n ${key[Left]} ]] && bindkey "${key[Left]}" backward-char
[[ -n ${key[Down]} ]] && bindkey "${key[Down]}" down-line-or-search
[[ -n ${key[Right]} ]] && bindkey "${key[Right]}" forward-char
# --- key input handling


# +++ setup vim input mode
prompt_addition='%F{blue}[I]'
bindkey -v
export KEYTIMEOUT=1

typeset -gA ft_zle_state

function ft-zshexit() {
    [[ -o hist_ignore_space ]] && BUFFER=' '
    BUFFER="${BUFFER}exit"
    zle .accept-line
}

function zle-keymap-select () {
    if [ $KEYMAP = vicmd ]; then
        # Command mode
        export prompt_addition='%F{green}[C]'
        # Set block cursor
        echo -ne '\e[1 q'
    else
        # Insert mode
        export prompt_addition='%F{blue}[I]'
        # Set beam cursor
        echo -ne '\e[5 q'
    fi
    update_prompt
    zle reset-prompt
}

zle -N zle-keymap-select
zle -N q ft-zshexit
