#!/bin/bash
# recipe.sh : 2023-05-15-14:13:26
# NOTE: Please uncomment the ingredients you wish to install before running!
# --------------------------------------------------------------------------

function main() {

# Shell
# --------------------------------------------------------------------------
#./ingredients/shell/fish.sh #Fish shell

# Filesystem
# --------------------------------------------------------------------------
#./ingredients/fs/android-mtp.sh #Android MTP (Media Transfer Protocol) Filesystem

# System
# --------------------------------------------------------------------------
#./ingredients/system/btop.sh #btop: a terminal based system monitoring tool (like htop but better)
#./ingredients/system/dnsutils.sh #Various DNS related utilities including dig
#./ingredients/system/kde-configure-baloo-basic-indexing.sh #Configure Baloo file indexer to only perform basic indexing (performance improvement)
#./ingredients/system/kde-remove-sddm.sh #Remove SDDM display manager and support starting plasma directly after logging in on TTY1
#./ingredients/system/kitty.sh #kitty: a lightweight GPU accelerated terminal emulator
#./ingredients/system/networkmanager-openvpn.sh #OpenVPN support for networkmanager
#./ingredients/system/openssh.sh #OpenSSH: supports remote login via SSH protocol
#./ingredients/system/rsync.sh #Command line utility for syncing filesystems (useful for backup)

# Editors
# --------------------------------------------------------------------------
#./ingredients/editor/neovim.sh #Neovim (replaces vim)

# Web
# --------------------------------------------------------------------------
#./ingredients/web/firefox.sh #Firefox
#./ingredients/web/google-chrome.sh #Google Chrome
#./ingredients/web/remmina.sh #Remmina RDP client
#./ingredients/web/slack.sh #Slack

# Development
# --------------------------------------------------------------------------
#./ingredients/dev/0_git.sh "Firstname Lastname" "myname@mydomain.com" #Git installation and configuration
#./ingredients/dev/1_vscode.sh #Visual Studio Code
#./ingredients/dev/3_dotnet-6.sh #.NET Core SDK and Runtimes (version 6.x)
#./ingredients/dev/3_dotnet-latest.sh #.NET Core SDK and Runtimes (latest stable version)
#./ingredients/dev/4_dotnet-https-dev-cert.sh #ASP.NET Dev HTTPS Cert [Requires /dev/dotnet ingredient]
#./ingredients/dev/android.sh #Android development tools (ADB, etc.)
#./ingredients/dev/docker.sh #Docker
#./ingredients/dev/postman.sh #Postman
#./ingredients/dev/vscode-vim.sh #vim extension for VSCode [Requires /dev/1_vscode ingredient]

# Productivity
# --------------------------------------------------------------------------
#./ingredients/productivity/cht.sh #cht.sh is a command line cheatsheet that provides TLDR for tons of things
#./ingredients/productivity/pdftk.sh #PDF Toolkit allows for merging, splitting, etc.
#./ingredients/productivity/teams.sh #Teams for Linux (uses electron wrapper)
#./ingredients/productivity/xournalpp.sh #Xournal++ PDF annotation application

# Media
# --------------------------------------------------------------------------
#./ingredients/media/blanket.sh #Whitenoise generation application
#./ingredients/media/codecs.sh #Codecs for Audio, Images, and Video
#./ingredients/media/dvd.sh #Support for CD & DVD playback [Requires player e.g. vlc]
#./ingredients/media/kasts.sh #Excellent podcast manager
#./ingredients/media/tauon-music-box.sh #Tauon Music Box
#./ingredients/media/vlc.sh #VLC media player

# Gaming
# --------------------------------------------------------------------------
#./ingredients/gaming/steam.sh #Steam gaming platform

# VM
# --------------------------------------------------------------------------
#./ingredients/vm/kvm-qemu-guest.sh #KVM/QEMU guest utilities (only install if running as VM)
#./ingredients/vm/kvm-qemu-host.sh #KVM/QEMU host installation and configuration

# Icons
# --------------------------------------------------------------------------
#./ingredients/icons/0_kde-papirus-icons.sh #Papirus icon theme and config for KDE
#./ingredients/icons/papirus-icons-folders.sh indigo Papirus-Dark #Supplmental colored folders for Papirus icon theme [Requires /icons/0_xxx-papirus-icons ingredient]
# Folder colors: black, bluegrey, brown, deeporange, grey, magenta, orange, paleorange, red, violet, yaru, blue, breeze, cyan, green, indigo, nordic, palebrown, pink, teal, white, yellow

# Fonts
# --------------------------------------------------------------------------
#./ingredients/fonts/jetbrains-mono.sh #Install and configure Jetbrains Mono font

# Hardware
# --------------------------------------------------------------------------
#./ingredients/hardware/mouse-logitec-solaar.sh #GUI application for managing logitec unifying receivers

# Themes
# --------------------------------------------------------------------------
#./ingredients/themes/dracula-theme.sh #Dracula theme
#./ingredients/themes/kde-layan-theme.sh #Layan theme for KDE

# 14. Additional Packages
# --------------------------------------------------------------------------
# paru -S --noconfirm --needed {package1} {package2} ...

}

main "$@"
