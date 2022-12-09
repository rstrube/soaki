#!/bin/bash
#|#./ingredients/system/kde-configure-baloo-basic-indexing.sh #Configure Baloo file indexer to only perform basic indexing (performance improvement)

# Disable baloo to make changes
balooctl disable

# Update baloo configuration to only perform basic indexing (filename only)
kwriteconfig5 --file baloofilerc --group General --key "only basic indexing" "true"

# Purge the existing index
balooctl purge

# Reenable baloo
balooctl enable

# Reindex files
balooctl check

# Report status
balooctl status
