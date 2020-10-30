#!/bin/bash

function install_language() {
  asdf install $1
}

cat tool-versions | while read prog_lang
do
  install_language $prog_lang
done
