#!/bin/bash

# Switch to project root
cd ..

# Setup virtual environment
virtualenv env -p python3.7
source env/bin/activate
python -m ensurepip --upgrade

# Install package in development mode
pip install -e .[dev]

# Setup pre-commit
pre-commit install --install-hooks
