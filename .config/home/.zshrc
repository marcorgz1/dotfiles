export ZSH="$HOME/.oh-my-zsh"

export PATH=$HOME/.nimble/bin:$PATH
export PATH=$HOME/.console-ninja/.bin:$PATH

# fpath+=($HOME/pure)

# .zshrc
# autoload -U promptinit; promptinit
# prompt pure

# ZSH_THEME="spaceship"

# Zsh theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

plugins=(
    git
    zsh-autosuggestions
    zsh-history-substring-search
)

source /home/marcorgz1/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $ZSH/oh-my-zsh.sh

alias cty='tty-clock -S -c -C 4 -b -n'
alias mtx='cmatrix -r -b'
alias pipes='sh ~/pipes.sh/pipes.sh -t 4'
alias t='tmux'
alias ta='tmux attach'
alias tl='tmux ls'
alias z..='z ..'

alias lgit='lazygit'
alias ggbranch='git branch'
alias ggcheckout='git checkout'
alias ggswitch='git switch'
alias gginit='git init'
alias ggclone='git clone '
alias ggadd='git add'
alias ggcommit='git commit -m'
alias ggpush='git push'
alias ggpull='git pull'
alias ggstatus='git status'
alias ggmerge='git merge'
alias gglog="git log"

alias ff='fastfetch --config boxes'
alias nh='nitch -f'
alias of='onefetch'

alias open="thunar"
alias py='python3'
alias zshrc='nvim ~/.zshrc'
alias pnpm dev='pnpm run dev'

colorscript -e 36
# anime-colorscripts -r naruto jujutsu-kaisen hunter-x-hunter
fastfetch --config boxes

# In case a command is not found, try to find the package that has it
function command_not_found_handler {
  printf 'zsh: command not found: %s\n' "$1"
  local purple='\e[1;35m' bright='\e[0;1m' green='\e[1;32m' reset='\e[0m'
  local entries=( ${(f)"$(/usr/bin/pacman -F --machinereadable -- "/usr/bin/$1")"} )
  if (( ${#entries[@]} )) ; then
    printf "${bright}$1${reset} may be found in the following packages:\n"
    local pkg
    for entry in "${entries[@]}" ; do
      local fields=( ${(0)entry} )
      if [[ "$pkg" != "${fields[2]}" ]]; then
        printf "${purple}%s/${bright}%s ${green}%s${reset}\n" "${fields[1]}" "${fields[2]}" "${fields[3]}"
      fi
      printf '    /%s\n' "${fields[4]}"
      pkg="${fields[2]}"
    done
  fi
  return 127
}

# pnpm
export PNPM_HOME="/home/marcorgz1/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH=$PATH:/home/marcorgz1/.spicetify
fpath+=${ZDOTDIR:-~}/.zsh_functions

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/marcorgz1/.lmstudio/bin"

. "$HOME/.atuin/bin/env"

eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"
# eval "$(starship init zsh)"
