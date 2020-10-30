#!/bin/bash

# NODEJS workaround: (at least for the time being, you need to import the
# developer GPG keys, in order to install the language.

bash -c
'${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

