export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="ultima"

plugins=(
    git
    zsh-autosuggestions
    zsh-history-substring-search
)

source $ZSH/oh-my-zsh.sh

alias cty='tty-clock -S -c -C 6 -t -n -D'
alias t='tmux'
alias ta='tmux attach'
alias tl='tmux ls'
alias cd..='cd ..'
alias gginit='git init'
alias ggclone='git clone '
alias ggadd='git add .'
alias ggcommit='git commit -m'
alias ggpush='git push'
alias ggpull='git pull'
alias ggstatus='git status'
alias gglog="git log"
alias open="thunar"
alias py='python3'
alias zshrc='nvim ~/.zshrc'
alias pnpm dev='pnpm run dev'

colorscript -e 36
anime-colorscripts -r
fastfetch --config groups

PATH=~/.console-ninja/.bin:$PATH
source /home/marcorgz1/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pnpm
export PNPM_HOME="/home/marcorgz1/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH=$PATH:/home/marcorgz1/.spicetify