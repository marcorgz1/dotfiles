# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="fernu"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# -- general settings --
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
pokemon-colorscripts -s -r

# fastfetch. Will be disabled if above colorscript was chosen to install
#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up icons for files/folders in terminal
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias cty='tty-clock -S -c -C 6 -t -n -D'
alias mtx='cmatrix -r'
alias ggclone='git clone'
alias ggadd='git add'
alias ggcommit='git commit -m'
alias pnpm dev='pnpm run dev'
alias cd..='cd ..'
alias gglog='git log --oneline'

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

anime-colorscripts -r
fastfetch --config groups

export PATH=$PATH:/home/marco1/.spicetify

PATH=~/.console-ninja/.bin:$PATH
