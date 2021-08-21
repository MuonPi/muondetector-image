# +++ setup prompt
prompt_addition=""

SPROMPT="Correct %F{red}%R%f to %F{green}%r%f? [%UY%ues|%UN%uo|%UA%ubort|%UE%udit]"

function update_prompt() {
    vcs_info
    PROMPT="%(#.%F{magenta}.%F{cyan})%n%F{gray}@%F{yellow}%m %F{cyan}[%2~] %f% ${prompt_addition}%f %# %f"
    RPROMPT="${vcs_info_msg_0_}%F{cyan}%l %j:%?%f"
}

add-zsh-hook precmd update_prompt
# --- setup prompt
