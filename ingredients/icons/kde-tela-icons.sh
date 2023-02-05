#!/bin/bash
#|#./ingredients/icons/kde-tela-icons.sh #Tela icon theme with accents for KDE

DIR=$(dirname "$0")
source $DIR/../_helper/_common-functions.sh

paru -S --noconfirm --needed tela-icon-theme-kde-accent-git
