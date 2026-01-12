# --- 1. SETUP BLE.SH (Must be at the very top) ---
# We source it, but with --noattach so it waits for Starship
[[ $- == *i* ]] && source ~/git_pkgs/ble.sh/out/ble.sh --noattach

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#### --- BASIC SETTINGS --- ####
stty -ixon
HISTCONTROL=ignoredups:erasedups
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend

# Bash completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
fi

#### --- LS COLORS --- ####
# Keep this! Starship handles the prompt, but Vivid handles 'ls' output.
export LS_COLORS="$(vivid generate tokyonight-moon)"

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='exa -l'
alias l='ls -CF'
alias grep='grep --color=auto'

#### --- CUSTOM ALIASES --- ####
alias ..='cd ..'
alias ...='cd ../..'
alias update='sudo pacman -Syu'
alias cls='clear'

# -----------------------------------------------------------
#  DELETED SECTION:
#  I removed all your manual functions:
#  - git_branch()
#  - python_venv()
#  - node_version()
#  - exit_icon()
#  - __prompt_command()
#
#  Starship will now handle all of this.
# -----------------------------------------------------------

#### --- TERMINAL SETTINGS --- ####
export TERM=xterm-256color

#### --- 2. INITIALIZE STARSHIP --- ####
# This sets the PS1 (prompt) before ble.sh takes over
eval "$(starship init bash)"

#### --- 3. ATTACH BLE.SH (Must be at the very bottom) --- ####
[[ ${BLE_VERSION-} ]] && ble-attach
