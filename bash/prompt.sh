#!/bin/sh

dir_chomp () {
    pwd 2> /dev/null | sed -e "s|^$HOME|~|" -e 's:\(\.*[^/]\)[^/]*/:\1/:g'
}

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

ssh_hostname() {
    if [[ ! -z $SSH_CONNECTION ]]; then
        hostname=`hostname -s`
        printf "$hostname "
    fi
}

export PS1="\[\033[32m\]\$(dir_chomp)\[\033[33m\]\$(parse_git_branch)\[\033[31m\] \$(ssh_hostname)\[\033[00m\]$ "
