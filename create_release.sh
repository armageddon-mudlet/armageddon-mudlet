#!/bin/bash
echo Creating released/ directory.
rm -rf released/
mkdir released/

build_package() {
    NAME=$1
    echo Packaging $NAME.
    mkdir released/$NAME
    # build the zipfile
    rm -rf tmp
    mkdir tmp
    cp $NAME/*.md tmp/
    cp $NAME/*.xml tmp/
    cp $NAME/config.lua tmp/
    mkdir tmp/assets
    cp assets/* tmp/assets/
    mkdir tmp/fonts
    cp fonts/* tmp/fonts/
    cd tmp
    zip ../released/$NAME/$NAME.zip ./* ./assets/* ./fonts/*
    cd ..
    rm -rf tmp
    # copy the versions file
    cp $NAME/*versions.lua released/$NAME/
}

build_package arm_gui
build_package arm_prompt
build_package generic_mapper
