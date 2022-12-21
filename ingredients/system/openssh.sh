#!/bin/bash
#|#./ingredients/system/openssh.sh #OpenSSH: supports remote login via SSH protocol

paru -S --noconfirm --needed openssh

if [[ -e /usr/bin/kwalletd5 ]]; then
    echo "kwallet detected, configuring kwallet to store SSH passphrases."

    cat <<EOT > "ssh-add.desktop"	
[Desktop Entry]
Exec=ssh-add -q
Name=ssh-add
Type=Application
EOT

    mkdir -p ~/.config/autostart
    cp ssh-add.desktop ~/.config/autostart/
    rm ssh-add.desktop

cat <<EOT > "ssh_askpass.conf"	
SSH_ASKPASS='/usr/bin/ksshaskpass'
SSH_ASKPASS_REQUIRE=prefer
EOT

    mkdir -p ~/.config/environment.d
    cp ssh_askpass.conf ~/.config/environment.d/
    rm ssh_askpass.conf
fi
