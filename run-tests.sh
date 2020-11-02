#!/bin/bash
#
# This file is part of REANA.
# Copyright (C) 2020 CERN.
#
# REANA is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.

# Quit on errors
set -o errexit

# Quit on unbound symbols
set -o nounset

# Enable globstar (**)
shopt -s globstar

check_script () {
    shellcheck run-tests.sh
}

check_docstyle () {
    awesome_bot --allow-dupe --skip-save-results --allow-redirect --white-list https://reana.cern.ch -- templates/**/*.html
}

check_docker_build () {
    docker build -t reanahub/wwwreanaio .
}

check_all () {
    check_script
    check_docstyle
    check_docker_build
}

if [ $# -eq 0 ]; then
    check_all
    exit 0
fi

for arg in "$@"
do
    case $arg in
        --check-shellscript) check_script;;
        --check-docstyle) check_docstyle;;
        --check-docker-build) check_docker_build;;
        *)
    esac
done
