#!/bin/bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Install heroku..."

curl https://cli-assets.heroku.com/install.sh | sh

echo_done "Heroku configuration!"
