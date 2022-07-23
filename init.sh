#!/usr/bin/env bash
{
    echo 'git cloning...'
    git clone https://github.com/shabaraba/setup-develop-environment
    mv ./setup-develop-environment $1-environment

    echo 'select target framework environments... ./setup-develop-environment/Frameworks/'$1
    mv $1-environment/Frameworks/$1/* $1-environment/
    rm -rf $1-environment/Frameworks $1-environment/.git $1-environment/init.sh $1-environment/LICENSE $1-environment/README.md

    touch $1-environment/README.md
    mkdir $1-environment/src && touch $1-environment/src/empty
    mkdir $1-environment/database && touch $1-environment/database/empty
}



