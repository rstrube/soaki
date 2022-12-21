#!/bin/bash
#|#./ingredients/system/kde-overview-and-shortcuts.sh #Enable new Plasma overview feature and set sane shortcuts

# Enable Overview plugin
kwriteconfig5 --file kwinrc --group Plugins --key overviewEnabled "true"

# To get a list of shortcut names:
# qdbus org.kde.kglobalaccel /component/kwin org.kde.kglobalaccel.Component.shortcutNames

# Set Overview keyboard shortcut to "Meta" (like Gnome)
kwriteconfig5 --file kwinrc --group ModifierOnlyShortcuts --key Meta "org.kde.kglobalaccel,/component/kwin,org.kde.kglobalaccel.Component,invokeShortcut,Overview"

# Reconfigure KWin to reflect changes immediately
qdbus org.kde.KWin /KWin reconfigure