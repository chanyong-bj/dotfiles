# Currently this path is appended to dynamically when picking a ruby version
# zshenv has already started PATH with rbenv so append only here
#export PATH=$PATH:/usr/local/bin:/usr/local/sbin:$HOME/bin
export PATH=$PATH:/usr/local/sbin:$HOME/bin

# remove duplicate entries
typeset -U PATH

# Set default console Java to 1.6
if [[ $IS_MAC -eq 1 ]]; then
    #export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
    JAVA_HOME=`/usr/libexec/java_home`
    export JAVA_HOME
fi

# Setup terminal, and turn on colors
#export TERM=xterm-256color
export TERM=screen-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
if [[ $IS_MAC -eq 1 ]]; then
    export EDITOR='vim'
fi
if [[ $IS_LINUX -eq 1 ]]; then
    export EDITOR='vim'
fi

# Set LC_ALL="UTF8"
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

# Virtual Environment Stuff
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/code/django
[ -f /usr/local/bin/virtualenvwrapper.sh ] && source /usr/local/bin/virtualenvwrapper.sh
[ -f /etc/bash_completion.d/virtualenvwrapper ] && source /etc/bash_completion.d/virtualenvwrapper
export PIP_VIRTUALENV_BASE=$HOME/.virtualenvs
export PIP_RESPECT_VIRTUALENV=true

# Scala config
export SCALA_HOME=/usr/local/opt/scala/idea

