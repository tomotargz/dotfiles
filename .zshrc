# 補完
autoload -U compinit
compinit

# プロンプト
PROMPT="%F{cyan}%n@%m%f %~
$ "

if [ -e "$HOME/.zshrc_local" ]; then
    source "$HOME/.zshrc_local"
fi