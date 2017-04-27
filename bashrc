# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias vi=vim
alias l="ls -la"
alias c="clear"
alias t="tmux"
alias cleandocker='docker kill `docker ps -q`; docker rm `docker ps -aq`; docker image rm `docker images -q`'

# Powerline
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . ~/.local/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh
fi

# TheFuck
eval $(thefuck --alias)

# Sudoedit editor
export SUDO_EDITOR=vim
