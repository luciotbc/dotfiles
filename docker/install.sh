#!/bin/bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Start docker..."

sudo usermod -aG docker $USER
sudo systemctl start docker
sudo systemctl enable docker

echo_done "Docker configuration!"
