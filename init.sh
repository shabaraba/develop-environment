#!/usr/bin/env bash
{ # this ensures the entire script is downloaded #
    test() {
        curl -O https://raw.githubusercontent.com/shabaraba/dotfiles/main/.vimrc
    }

    if [ $# -ne 1 ]; then
      echo "the number of this shell argument must be 1." 1>&2
      exit 1
    fi

    if [ $1 = 'laravel' ]; then
        test
    fi
} # this ensures the entire script is downloaded #

