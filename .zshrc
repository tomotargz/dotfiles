# 補完--------------------------------------------------------------------------
autoload -U compinit
compinit

# プロンプト
PROMPT="%F{cyan}%n@%M%f %~
$ "

if [ -e "$HOME/.zshrc_local" ]; then
    source "$HOME/.zshrc_local"
fi

# 履歴--------------------------------------------------------------------------
# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=1000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000

# 重複を記録しない
setopt hist_ignore_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY
