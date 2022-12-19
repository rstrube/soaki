#!/bin/bash
#|#./ingredients/dev/docker.sh #Docker

DIR=$(dirname "$0")
source $DIR/../_helper/_common-functions.sh

paru -S --noconfirm --needed docker

# Add user to the correct groups
sudo usermod -a -G docker $USER

sudo systemctl enable docker.service
sudo systemctl start docker.service

echo -e "${YELLOW}Warning: you will need to reboot in order for the configuration changes to take affect.${NC}"
