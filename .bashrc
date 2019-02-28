
shopt -s histappend         # don't override the history file
shopt -s checkwinsize       # check terminal window size after each command

# enable colors for various common commands
if [ -x /usr/bin/dircolors ]; then
    /usr/bin/dircolors -b > /dev/null
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# prompts
#export PS1='\n\[\e[35m\]\w \[\e[0m\]@\[\e[34m\] \@\n\[\e[1m\]\[\e[33m\]>\[\e[34m\]>\[\e[35m\]>\[\e[0m\] '
#export PS2=' \[\e[1m\]\[\e[33m\]>\[\e[34m\]>\[\e[35m\]>\[\e[0m\] '

export PS1=$'\[\e[0;1;30;44m\] \@ \[\e[34;45m\]\ue0b0 \[\e[30;45m\]\w \[\e[0;1;35m\]\ue0b0\[\e[0m\] '

