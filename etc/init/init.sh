#!/bin/bash
. "$DOTPATH"/etc/utils.sh

if [ "$(get_os)" == "ubuntu" ]; then
    . "$DOTPATH"/etc/init/ubuntu.sh
fi
