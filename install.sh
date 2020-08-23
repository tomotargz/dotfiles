#...
SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
for f in .??*
do
    # Ignored files and(or) directories
    [[ ${f} = ".git" ]] && continue
    [[ ${f} = ".gitignore" ]] && continue
    ln -snfv ${SCRIPT_DIR}/${f} ${HOME}/${f}
done
echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)
