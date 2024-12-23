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

### Prompt
autoload -U promptinit && promptinit && prompt pure
autoload -U compinit && compinit

### Aliases
alias v=nvim
alias t=tmux
alias e=exit

alias la='ls -lathr'
