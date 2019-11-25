export PATH="/usr/local/sbin:$PATH"

export CLICOLOR=1
export LSCOLORS=exGxBxDxCxEgEdxbxgxcxd

GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWUPSTREAM=auto
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true

PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

complete -C /usr/local/bin/vault vault

alias ll='ls -lAh'

alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"
alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"

if [ -e .java_version ]; then
    local javaVersion
    javaVersion="$(cat .java_version)"
    export JAVA_HOME="$(/usr/libexec/java_home -v $javaVersion)"
    java -version
else
  j8
fi
