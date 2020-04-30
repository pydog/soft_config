alias savetmux="tmux capture-pane -pS -1000000 > $HOME/tmux.log"
export PS1=$PS1"\n\[\033[1;31m\]\u\[\033[35m\]@\[\033[1;32m\]\h\[\033[1;36m\]\$ "
