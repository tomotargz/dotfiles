: "General settings" && {
    # Enable completion
    autoload -U compinit && compinit
    # Unable beep
    setopt nobeep
    # Emac keybind
    bindkey -e
    # Minimize key waiting time
    KEYTIMEOUT=1
}

: "History" && {
    # History file
    HISTFILE=$HOME/.zsh_history
    # History size
    HISTSIZE=10000
    # History count
    SAVEHIST=10000
    # Ignore duplicate
    setopt hist_ignore_dups
    setopt hist_ignore_all_dups
    # Share history with windows
    setopt share_history
    # Ignore history command
    setopt hist_no_store
    # Remove unnecessary spaces
    setopt hist_reduce_blanks
}

: "prompt" && {
    # PROMPT=$'\n'"%~"$'\n'"$ "
    PROMPT="%~"$'\n'"$ "
    # PROMPT="; "
}

: "Local configuration" && {
    if [ -e "$HOME/.zshrc_local" ]; then
        source "$HOME/.zshrc_local"
    fi
}

: "Auto run" && {
    # tmux
    if which tmux reattach-to-user-namespace >/dev/null 2>&1; then
        [[ -z "$TMUX" && ! -z "$PS1" ]] && exec tmux
    fi

    # direnv
    if which direnv >/dev/null 2>&1; then
        eval "$(direnv hook zsh)"
    fi

    # mise
    # if which /opt/homebrew/bin/mise; then
    if which mise >/dev/null 2>&1; then
        eval "$(/opt/homebrew/bin/mise activate zsh)"
    fi
}

: "Alias" && {
    # "his" incrementally searches the history
    alias his='print -z $(history -a -n -r 1 | fzf --exact --reverse --no-sort)'

    # "rp" incrementally searches the repositories managed by ghq
    function rp(){
        repo=$(ghq list | fzf --reverse)
        [[ -n "$repo" ]] && cd $(ghq root)/$repo
    }
}

: "Environment variables" && {
    export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
    export FZF_DEFAULT_OPTS='--color bw'
}
