#!/bin/bash
#|#./ingredients/themes/dracula-theme-fish-shell.sh #Dracula theme for fish shell [Requires /shell/fish ingredient]

DIR=$(dirname "$0")
source $DIR/../_helper/_common-functions.sh

function main() {

    install
}

function install() {

    mkdir -p ~/.config/fish/conf.d
    configure_fish_dracula_tty_colors
    configure_fish_dracula_colors
}

function configure_fish_dracula_tty_colors {

    cat <<EOT > "tty-dracula-colors.fish"
# Set colors for TTY (Linux Virtual Console) so things look good

if [ "\$TERM" = "linux" ]
    echo -en "\e]P0282a36" #color 0:  background
    echo -en "\e]PFf8f8f2" #color 15: foreground

    echo -en "\e]P1ff5555" #color 1: red
    echo -en "\e]P250fa7b" #color 2: green
    echo -en "\e]P3f1fa8c" #color 3: yellow
    echo -en "\e]P4bd93f9" #color 4: blue (Dracula Purple)
    echo -en "\e]P5ff79c6" #color 5: magenta (Dracula Pink)
    echo -en "\e]P68be9fd" #color 6: cyan

    echo -en "\e]P7f8f8f2" #color 7: white (Dracula Foreground)
    echo -en "\e]P844475a" #color 8: b-black (Dracula Current Line)

    echo -en "\e]P9ff6e67" #color 9:  b-red
    echo -en "\e]PA5af78d" #color 10: b-green
    echo -en "\e]PBf4f99d" #color 11: b-yellow
    echo -en "\e]PCcaa8fa" #color 12: b-blue (Dracula B-Purple)
    echo -en "\e]PDff92d0" #color 13: b-magenta (Dracula B-Pink)
    echo -en "\e]PE9aedfe" #color 14: b-cyan
    
    clear #for background artifacting
end
EOT

    cp tty-dracula-colors.fish ~/.config/fish/conf.d/.
    rm tty-dracula-colors.fish
}

function configure_fish_dracula_colors {

    cat <<EOT > "dracula-colors.fish"
# Colorscheme: Dracula
# Use "set_color --print-colors" to visualize all colors in the terminal
set -U fish_color_normal normal
set -U fish_color_command F8F8F2
set -U fish_color_quote F1FA8C
set -U fish_color_redirection 8BE9FD
set -U fish_color_end 50FA7B
set -U fish_color_error FFB86C
set -U fish_color_param FF79C6
set -U fish_color_comment 6272A4
set -U fish_color_match --background=brblue
set -U fish_color_selection white --bold --background=brblack
set -U fish_color_search_match bryellow --background=brblack
set -U fish_color_history_current --bold
set -U fish_color_operator 00a6b2
set -U fish_color_escape 00a6b2
set -U fish_color_cwd green
set -U fish_color_cwd_root red
set -U fish_color_valid_path --underline
set -U fish_color_autosuggestion BD93F9
set -U fish_color_user brgreen
set -U fish_color_host normal
set -U fish_color_cancel --reverse
set -U fish_pager_color_prefix normal --bold --underline
set -U fish_pager_color_progress brwhite --background=cyan
set -U fish_pager_color_completion normal
set -U fish_pager_color_description B3A06D
set -U fish_pager_color_selected_background --background=brblack
set -U fish_pager_color_secondary_background 
set -U fish_pager_color_background 
set -U fish_pager_color_secondary_prefix 
set -U fish_pager_color_selected_description 
set -U fish_color_keyword 
set -U fish_pager_color_secondary_description 
set -U fish_pager_color_selected_prefix 
set -U fish_pager_color_selected_completion 
set -U fish_color_host_remote 
set -U fish_color_option 
set -U fish_pager_color_secondary_completion
EOT

    cp dracula-colors.fish ~/.config/fish/conf.d/.
    rm dracula-colors.fish
}

main "$@"
