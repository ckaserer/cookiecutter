FROM python:3

RUN pip3 install cookiecutter 

WORKDIR /cookiecutter

ENTRYPOINT [ "cookiecutter" ]