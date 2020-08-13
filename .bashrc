# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# export PS1='\[\e[36m\]\u@\h \w\[\e[0m\]\n$ '
PS1='\[\e[36m\]\u@\h\[\e[0m\] \w\n$ '

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export FZF_DEFAULT_OPTS='--color bw'
export TERM=xterm-256color
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
# export LC_ALL=en_US.UTF-8
