#!/bin/bash
#|#./ingredients/system/kde-remove-sddm.sh #Remove SDDM display manager and support starting plasma directly after logging in on TTY1

# Disable the SDDM systemd service
sudo systemctl disable sddm.service

# Remove all traces of SDDM
paru -Rns sddm sddm-kcm

# Append to .bash_profile in order to start KDE plasma when logging into to TTY1
echo "Appending to ~/.bash_profile to support starting plasma after login on TTY1."

echo "" >> ~/.bash_profile
echo "# If running from tty1 start kde plasma" >> ~/.bash_profile
echo '[ "$(tty)" = "/dev/tty1" ] && exec startplasma-wayland' >> ~/.bash_profile

# If using fish, setup a .fish file to start KDE plasma with logging into TTY1
if [[ -e /usr/bin/fish ]]; then

    echo "fish detected, creating ~/.config/fish/conf.d/plasma.fish to support starting plasma after login on TTY1."

    cat <<EOT > "plasma.fish"	
# If running from tty1 start kde plasma
set TTY1 (tty)
[ "\$TTY1" = "/dev/tty1" ] && exec startplasma-wayland
EOT

    cp plasma.fish ~/.config/fish/conf.d/.
    rm plasma.fish
fi

echo "Configuring kwallet to unlock when logging in via TTY1."

echo "auth       optional     pam_kwallet5.so" | sudo tee -a /etc/pam.d/login
echo "session    optional     pam_kwallet5.so auto_start force_run" | sudo tee -a /etc/pam.d/login
