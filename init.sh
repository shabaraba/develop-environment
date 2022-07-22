#!/usr/bin/env bash
{ # this ensures the entire script is downloaded #
    # setup_laravel() {
    #     git clone https://github.com/shabaraba/setup-develop-environment
    #     mv setup-develop-environment laravel-environment
    #     mv laravel-environment/Frameworks/Laravel laravel-environment/
    #     cd laravel-environment && rm -rf .git
    # }
    #
    # setup_react_native() {
    #     git clone https://github.com/shabaraba/react-native-environment.git
    #     cd react-native-environment && rm -rf .git
    # }
    #
    # if [ $# -ne 1 ]; then
    #   echo "the number of this shell argument must be 1." 1>&2
    #   exit 1
    # fi
    #

    git clone https://github.com/shabaraba/setup-develop-environment
    mv setup-develop-environment $1-environment
    mv $1-environment/Frameworks/$1/* $1-environment/*
    rm -rf $1-environment/Frameworks $1-environment/.git
} # this ensures the entire script is downloaded #

