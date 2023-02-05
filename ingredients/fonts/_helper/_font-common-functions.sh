#!/bin/bash
# Font Installation, Fontconfig

function install_fonts {
    # Install the following fonts:
    # Roboto: default font for Google's Android OS
    # Jetbrains Mono: a fantastic monospace font
    # Droid: another common font that came with Google's Android OS
    # Liberation: font family which aims at metric compatibility with Arial, Times New Roman, and Courier New
    # Nerd Fonts: Provides a plethora of font icons
    paru -S --noconfirm --needed ttf-roboto ttf-jetbrains-mono ttf-droid ttf-liberation ttf-nerd-fonts-symbols-1000-em

    # Create a symlink for the nerd fonts config
    sudo ln -s /usr/share/fontconfig/conf.avail/10-nerd-font-symbols.conf /etc/fonts/conf.d/10-nerd-font-symbols.conf

    # Create fonts.conf in $HOME to register JetBrains as a monospace font
    if [[ ! -d "~/.config/fontconfig" ]]; then
        mkdir -p ~/.config/fontconfig
    fi

    cat <<EOT > "fonts.conf"
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
    <!-- register JetBrains Mono as a monospace font -->
    <alias>
        <family>JetBrains Mono</family>
        <default>
            <family>monospace</family>
        </default>
    </alias>
    <dir>~/.fonts</dir>
</fontconfig>
EOT

    mv fonts.conf ~/.config/fontconfig/

    # This rebuilds the font-cache, taking into account any changes
    sudo fc-cache -r -v
    fc-cache -r -v
}

function test_coverage {
    # Test font coverage for specific unicode characters required by PowerLine
    echo "Testing font coverage..."
    echo -e "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699 \u2800 \u28ff \u25a0 \u25ff \u2500 \u259f"
}
