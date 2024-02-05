#!/bin/bash
. "$DOTPATH"/etc/utils.sh

if [ "$(get_os)" == "ubuntu" ]; then
    . "$DOTPATH"/bin/ubuntu.sh
elif [ "$(get_os)" == "osx" ]; then
    . "$DOTPATH"/bin/osx.sh
fi
