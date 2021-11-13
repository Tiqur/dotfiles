#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# source .bashrc
alias src="source ~/.bashrc"

# Open nvim
alias vim="nvim"

# nvim into init.vim
alias nvi="nvim ~/.config/nvim/init.vim"

# nvim into i3 config
alias ni3="nvim ~/.config/i3/config"

# nvim into .bashrc
alias nbc="nvim ~/.bashrc"

# nvim into plugins.vim
alias npv="nvim ~/.config/nvim/vim-plug/plugins.vim"

# nvim to compton.conf
alias ncom="nvim ~/.config/compton.conf"

# cd to .config
alias conf="cd ~/.config"

# Goto /opt dir
alias opt="cd /opt"

# activate python virtural env from main dir
alias activate="source ./venv/bin/activate"

# Show hidden files
alias la='ls -A'

# Open todo list
alias todo='sudo nvim Desktop/startup_todo.txt'

# Open xinitrc
alias xinitrc='sudo nvim /etc/X11/xinit/xinitrc'

# nodetmux
alias dev='/opt/dev'

# SSH into madhouse dev vps
alias sshdev='ssh root@149.28.75.54'

. /opt/asdf-vm/asdf.sh


export PATH=/var/lib/snapd/snap/bin:$PATH
