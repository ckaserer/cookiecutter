#!/bin/bash

readonly COOKIECUTTER_HOME=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# cookiecutter
function cookiecutter () {
  local command="docker run --rm -it -v $(pwd):/cookiecutter ckaserer/cookiecutter"
  echo "+ ${command} $@" && ${command} $@
}
readonly -f cookiecutter
[ "$?" -eq "0" ] || return $?

# cookiecutter-build
function cookiecutter-build () {
  local command="docker build -t ckaserer/cookiecutter $@ ${COOKIECUTTER_HOME}"
  echo "+ ${command}" && ${command}
}
readonly -f cookiecutter-build
[ "$?" -eq "0" ] || return $?