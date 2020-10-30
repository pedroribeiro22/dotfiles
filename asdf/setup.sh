#!/bin/bash

# Clones asdf repository and installs the program
./install_asdf.sh

# Adds all the plugins necessary for the programming languages instalation
./add_plugins.sh

# Apply workarounds
./workarounds.sh

# Install the actual programming languages
./install_languages.sh
