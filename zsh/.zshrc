### Path

### Editing
set -o vi

export VISUAL=nvim
export EDITOR=nvim
export TERM="tmux-256color"

### History
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

### Plugin Manager: Antidote
source ~/.antidote/antidote.zsh
antidote load

### Tmuxifier
export PATH="$HOME/.tmux/plugins/tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"

### Path
export PATH="$HOME/External/openshift-client-linux:$PATH"

### Prompt
autoload -U promptinit && promptinit && prompt pure
autoload -U compinit && compinit

### Aliases
alias v=nvim
alias t=tmux
alias e=exit

alias tns="tmuxifier new-session"
alias tls="tmuxifier load-session"
alias tes="tmuxifier edit-session"
alias tmrls="tmuxifier ls"

alias la='ls -lathr'

alias gs="git status"
alias gp="git pull"
alias ga="git add"
alias gc="git commit -m"
alias gP="git push"

fastfetch
