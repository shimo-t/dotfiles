#!/bin/bash
. "$DOTPATH"/etc/utils.sh

if [ "$(get_os)" == "ubuntu" ]; then
    . "$DOTPATH"/etc/init/ubuntu.sh
elif [ "$(get_os)" == "osx" ]; then
    . "$DOTPATH"/etc/init/osx.sh
fi
