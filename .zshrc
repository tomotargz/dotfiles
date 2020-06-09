: "一般的な設定" && {
    # 補完機能強化
    autoload -U compinit && compinit
    # コマンドの誤り検知
    setopt correct
    # ビープ音を鳴らさない
    setopt nobeep
    # emacs キーバインド
    bindkey -e
}
KEYTIMEOUT=1
: "ヒストリ関連の設定" && {
    # 履歴ファイルの保存先
    HISTFILE=$HOME/.zsh_history
    # メモリに保存される履歴の件数
    HISTSIZE=10000
    # 履歴ファイルに保存される履歴の件数
    SAVEHIST=10000
    # 重複を記録しない
    setopt hist_ignore_dups
    setopt hist_ignore_all_dups
    # 異なるウインドウで履歴を共有する
    setopt share_history
    # historyコマンドは履歴に登録しない
    setopt hist_no_store
    # 余分な空白は詰めて記録
    setopt hist_reduce_blanks
}

: "プロンプト" && {
# PROMPT="%n@%F{8}%M%f %~
# $ "
PROMPT="%n@%M %~
$ "
}

: "ローカル設定" && {
    if [ -e "$HOME/.zshrc_local" ]; then
        source "$HOME/.zshrc_local"
    fi
}

: "tmux起動" && {
    if which tmux >/dev/null 2>&1; then
        [[ -z "$TMUX" && ! -z "$PS1" ]] && exec tmux
    fi
}

: "Alias" && {
    alias his='print -z $(history -a -n -r 1| fzf --height=10 --reverse)'
    function rp(){
        repo=$(ghq list | fzf --height=10 --reverse)
        [[ -n "$repo" ]] && cd $(ghq root)/$repo
    }
}

: "direnv起動" && {
    if which direnv >/dev/null 2>&1; then
        eval "$(direnv hook zsh)"
    fi
}

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export  FZF_DEFAULT_OPTS='--color bw'
export LC_ALL=en_US.UTF-8
