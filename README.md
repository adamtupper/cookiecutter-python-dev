# Cookiecutter Template for Remote Python Package Development

A Cookiecutter template for developing Python packages in a VS Code Remote Environment.

## Usage

You can setup a project using this template by following these steps.

### 1. Install Cookiecutter

```shell
pip install cookiecutter
```

### 2. Install and configure the GitHub CLI

Follow the appropriate instructions [here](https://cli.github.com) to install and configure the GitHub CLI. This Cookiecutter template automatically initialises a Git repository and sets up a GitHub remote. This is necessary to allow the code to be pulled on the remote machine.

### 3. Run Cookiecutter

```shell
cookiecutter https://github.com/adamtupper/cookiecutter-python-dev.git
```

### 4. Commit and push the initial project files

```shell
cd my-project
git add -A
git commit -m "Initial commit."
git push --set-upstream origin main
```

## Developing in a Remote Environment

Python packages based on this template are designed to enable containerized development on remote servers/machines using the Visual Studio Code [Remote - Containers extension](https://code.visualstudio.com/docs/remote/containers). This allows you to utilise more powerful machines remotely during development (useful for deep learning packages) and isolate your development environment.

To develop inside the container, run the **Remote-Containers: Reopen in Container** command after opening the project in VS Code (you may need to install the extension first).

The Makefile contains a number of targets for running tests, formatting, and building the package etc. The full list and description of each target can be found by running:

```shell
make help
```

Each time the package's dependencies are modified in `setup.cfg`, the package should be reinstalled via:

```shell
make install-dev
```

## Notes

- The package is initialised with an MIT license. If you would like to use a different license, update `LICENSE` and `setup.cfg` after running the template.
- The structure of the package follows the [Packaging Python Projects](https://packaging.python.org/tutorials/packaging-projects/) tutorial.
- Packages are initialised with [pre-commit](https://pre-commit.com) and [pytest](https://pytest.org) as development/test requirements for formatting and unit testing, respectively.

## Contributing

If you notice any bugs, would like to contribute a bug-fix, or have a suggestion please open an [issue](https://github.com/adamtupper/cookiecutter-python-dev/issues).
