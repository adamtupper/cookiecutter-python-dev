.DEFAULT_GOAL := help

help:			## Show this help dialog.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

format:			## Run pre-commit hooks.
	pre-commit run

install-dev:		## Install the package in editable (dev) mode.
	pip3 install -e .[dev]

test:			## Run the tests.
	pytest -v tests/

build:			## Build the package.
	python3 -m pip install --upgrade build
	python3 -m build

upload:			## Upload the package to PyPI.
	python3 -m pip install --upgrade twine
	python3 -m twine upload --repository pypi dist/*
