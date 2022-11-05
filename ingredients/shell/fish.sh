#!/bin/bash
#|#./ingredients/shell/fish.sh #Fish shell

DIR=$(dirname "$0")
source $DIR/../_helper/_common-functions.sh

function main() {

    install
}

function install() {

    paru -S --noconfirm --needed fish
    
    mkdir -p ~/.config/fish/conf.d
    configure_fish_aliases
    configure_fish

    # Change the shell to fish
    chsh -s /usr/bin/fish

    echo -e "${YELLOW}Warning: you will need logout in order for the shell change to take effect.${NC}"
}

function configure_fish_aliases() {

    cat <<EOT > "aliases.fish"	
alias ll="ls -la"
alias l.="ls -d .*"
alias pacman_remove_orphans="paru -c"
EOT

    cp aliases.fish ~/.config/fish/conf.d/.
    rm aliases.fish
}

function configure_fish() {

    cat <<EOT > "config.fish"
# Don't shorten the working directory in the prompt
set -g fish_prompt_pwd_dir_length 0

EOT

    cp config.fish ~/.config/fish/
    rm config.fish
}

main "$@"
