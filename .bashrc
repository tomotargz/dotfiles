# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# export PS1='\[\e[36m\]\u@\h \w\[\e[0m\]\n$ '
PS1='\[\e[36m\]\u@\h\[\e[0m\] \w\n$ '

export GOPATH=$HOME/go
