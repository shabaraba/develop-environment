#!/usr/bin/env bash
{ # this ensures the entire script is downloaded #
    setup_laravel() {
        git clone https://github.com/shabaraba/laravel-environment.git
        cd laravel-environment && rm -rf .git
    }

    setup_react_native() {
        git clone https://github.com/shabaraba/react-native-environment.git
        cd react-native-environment && rm -rf .git
    }

    if [ $# -ne 1 ]; then
      echo "the number of this shell argument must be 1." 1>&2
      exit 1
    fi

    if [ $1 = 'laravel' ]; then
        setup_laravel
    elif [ $1 = 'react-native' ]; then
        setup_react_native
    fi
} # this ensures the entire script is downloaded #

