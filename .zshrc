[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U compinit
compinit

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"