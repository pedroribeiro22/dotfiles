#!/bin/bash

function add_plugin() {
  asdf plugin-add $1
}


cat tool-versions | while read line
do
  plugin=$(echo $line | head -n1 | awk '{print $1;}')
  add_plugin $plugin
done
