#!/bin/bash

SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
VENV=${SCRIPT_DIR}/.venv

python3 -m pip install virtualenv
python3 -m virtualenv ${VENV} --python=python3
python3 -m pip install --upgrade pip

source ${VENV}/bin/activate

python3 -m pip install -r requirements.txt
