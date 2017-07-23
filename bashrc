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
alias 'cleandocker'='docker stop `docker ps -q`; docker container rm `docker ps -aq`; docker image rm `docker image ls -q`'
alias cleanssh='rm ~/.ssh/known_hosts'
alias osman='ssh hustudent@131.224.64.46 -tt "ssh root@sscc-osman-l01t"'
alias mc='primusrun java -jar ~/Downloads/Minecraft.jar'

# Powerline
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . ~/.local/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
fi

# TheFuck
eval $(thefuck --alias)

# Sudoedit editor
export SUDO_EDITOR=vim

# For libvirtd
export LIBVIRT_DEFAULT_URI=qemu:///system

# For i3
export TERMINAL=gnome-terminal
export EDITOR=vim
