#!/bin/bash
#|#./ingredients/themes/kde-layan-theme.sh #Layan theme for KDE

DIR=$(dirname "$0")
source $DIR/../_helper/_common-functions.sh

paru -S --noconfirm --needed layan-kde-git kvantum-theme-layan-git layan-gtk-theme-git

# Create kvantum config setting Layan theme
cat <<EOT > "kvantum.kvconfig"
[General]
theme=LayanSolidDark
EOT

mkdir -p ~/.config/Kvantum
cp kvantum.kvconfig ~/.config/Kvantum
rm kvantum.kvconfig
