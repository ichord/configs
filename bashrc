
# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias pacman='sudo pacman-color'
export PATH=$PATH:/home/chord/bin/gaebin
export PACMAN=pacman-color

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

export GREP_OPTIONS='--color=auto -n'
export EDITOR='vim'
alias sudo='sudo env PATH=$PATH'

#PS1='${debian_chroot:+($debian_chroot)}\[\033[0;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#PS1='\[\e[01;32m\][\u@\[\e[01;33m\]\h\[\e[01;34m\] > \W]`git branch >/dev/null 2>&1 && echo -n -e "\[\e[01;33m\](branch:$(git branch | sed -e "/^[^*]/d" -e "s/^\* \(.*\)/\1/"))\[\e[01;34m\] "`\$ \[\e[00m\]'
PS1=' \[\e[01;32m\]@ \[\e[01;34m\]\W `git branch >/dev/null 2>&1 && echo -n -e "\[\e[01;33m\](branch:$(git branch | sed -e "/^[^*]/d" -e "s/^\* \(.*\)/\1/"))\[\e[01;34m\] "`\$ \[\e[00m\]'

[[ -s /home/chord/.pythonbrew/etc/bashrc ]] && source /home/chord/.pythonbrew/etc/bashrc

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
