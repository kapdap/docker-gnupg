#!/bin/sh

if [ ! -z "$DEBUG" ]; then
    set -x
fi

gpg ${@:---help}
