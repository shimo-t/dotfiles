#!/bin/bash
# ostype returns the lowercase OS name
ostype() {
    # shellcheck disable=SC2119
    uname | tr "[:upper:]" "[:lower:]"
}

# os_detect export the PLATFORM variable as you see fit
os_detect() {
    export PLATFORM
    case "$(ostype)" in
        *'linux'*)  PLATFORM='linux'   ;;
        *'darwin'*) PLATFORM='osx'     ;;
        *'bsd'*)    PLATFORM='bsd'     ;;
        *)          PLATFORM='unknown' ;;
    esac
}

# get_os returns OS name of the platform that is running
get_os() {
    os_detect
    if [ "$PLATFORM" = "osx" ]; then
        echo "osx"
    elif [ "$PLATFORM" = "bsd" ]; then
        echo "bsd"
    elif [ "$PLATFORM" = "linux" ]; then
        if   [ -e /etc/debian_version ] ||
             [ -e /etc/debian_release ]; then
            # Check Ubuntu or Debian
            if [ -e /etc/lsb-release ]; then
                # Ubuntu
                echo "ubuntu"
            else
                # Debian
                echo "debian"
            fi
        elif [ -e /etc/fedora-release ]; then
            # Fedra
            echo "fedora"
        elif [ -e /etc/redhat-release ]; then
            if [ -e /etc/oracle-release ]; then
                # Oracle Linux
                echo "oracle"
            else
                # Red Hat Enterprise Linux
                echo "redhat"
            fi
        elif [ -e /etc/arch-release ]; then
            # Arch Linux
            echo "arch"
        elif [ -e /etc/turbolinux-release ]; then
            # Turbolinux
            echo "turbol"
        elif [ -e /etc/SuSE-release ]; then
            # SuSE Linux
            echo "suse"
        elif [ -e /etc/mandriva-release ]; then
            # Mandriva Linux
            echo "mandriva"
        elif [ -e /etc/vine-release ]; then
            # Vine Linux
            echo "vine"
        elif [ -e /etc/gentoo-release ]; then
            # Gentoo Linux
            echo "gentoo"
        else
            # Other
            echo "unkown"
        fi
    fi
}
