alias savetmux="tmux capture-pane -pS -1000000 > $HOME/tmux.log"
export PS1="\[\e[0;31m\]\u\[\e[0;32m\]@\[\e[0;33m\]\h\[\e[0;35m\] | \[\e[0;32m\]\w\n\[\e[0;36m\]--> "
source $HOME/.git-completion.bash
