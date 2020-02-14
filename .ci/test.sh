#!/bin/bash -ex

source bashrc

cookiecutter-build --no-cache
cookiecutter --version

# Add version tag
docker tag ckaserer/cookiecutter ckaserer/cookiecutter:$(docker run --rm -it ckaserer/cookiecutter --version | awk '{print $2}')
