SOURCE="${BASH_SOURCE[0]}"

resolve_source() {
    SOURCE=$1;
    while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
        DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
        SOURCE="$(readlink "$SOURCE")"
        [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
    done
    DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
    echo $DIR
}

resolve_source $SOURCE

FILES="$HOME/dotfiles/mixings/general
$HOME/dotfiles/mixins/functions
$HOME/dotfiles/mixins/aliases
$HOME/dotfiles/mixins/grep
$HOME/dotfiles/mixins/nodejs
$HOME/dotfiles/mixins/path"


for file in $FILES
do
    [ -r $file ] && [ -f $file ] && source $file
done

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# We need this so that tmux uses bash when started in a bash shell
export SHELL=/bin/bash

# Keep all history
export HISTFILESIZE=
export HISTSIZE=
export HISTFILE=~/.bash_eternal_history
#HISTFILE="${HOME}/.history/$(date -u +%Y/%m/%d.%H.%M.%S)_${USER}_$$"
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
