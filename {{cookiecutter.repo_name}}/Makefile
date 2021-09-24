.DEFAULT_GOAL := help

help:			## Show this help dialog.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

format:	env		## Run pre-commit hooks.
	. env/bin/activate && pre-commit run

install:		## Install the package in editable (dev) mode.
	. env/bin/activate && pip install -e .[dev]

test:			## Run the tests.
	. env/bin/activate && pytest -v --cov tests/

build:			## Build the package.
	( \
		. env/bin/activate; \
		python -m pip install --upgrade build; \
		python -m build; \
	)

upload:			## Upload the package to PyPI.
	( \
		. env/bin/activate; \
		python -m pip install --upgrade twine; \
		python -m twine upload --repository pypi dist/*; \
	)
