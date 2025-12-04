# Contributing #

This guide is a _work in progress_, PR's welcome!

TODO

## Issues ##

TODO

## Pull-requests ##

TODO

## Development environment ##

Setting up a local development environment in Linux. Pull-requests welcome for
MacOS support. (Although, this _is_ the "Linux Upskill Challenge", why not Linux?)

### Python environment ###

Setting up a local python virtual environment is recommended.

```bash
python3 -m venv .env
```

Install python development environment dependencies.

```bash
python3 -m pip install -r requirements-dev.txt
```

Activate the python environment:

```bash
source .env/bin/activate
```

### NodeJS ###

The markdown linter that's used by this project is an npm package. Install
markdown lint dependencies from the `package.json` file.

```bash
npm install
```

## Linting ##

Linters:

* [yamllint](https://yamllint.readthedocs.io/en/stable/index.html)
* [markdownlint](https://github.com/DavidAnson/markdownlint)
* [ShellCheck](https://github.com/koalaman/shellcheck)
  * Via [shellcheck-py](https://github.com/shellcheck-py/shellcheck-py). It's
  easier to manage this project dependency as a pip-installable package. Also,
  pre-commit uses shellcheck-py because the native ShellCheck pre-commit hook
  has an annoying Docker dependency.

### Pre-commit ###

* [pre-commit](https://pre-commit.com/)

If you setup your python development environment by installing pip packages
from `requirements-dev.txt` earlier then `pre-commit` should already be
installed in your python environment.

Pre-commit runs linting, syntax, and other checks via git hook scripts that
run before code is committed.

Install pre-commit and the hook scripts defined in `.pre-commit-config.yaml`:

```bash
pre-commit install && pre-commit install-hooks
```

Pre-commit will now run prior to committing any code with git.

To manually run the hook scripts and lint the repo:

```bash
pre-commit
# or run for all files
pre-commit run --all-files
```

## Build ##

This project uses the [MkDocs](https://www.mkdocs.org/) Python static site
generator geared towards building project docs. It uses the
[mkdocs-material](https://github.com/squidfunk/mkdocs-material) theme.

If you setup your Python environment above, then the mkdocs and mkdocs-material
packages should already be installed.

A local instance of the site can be built and served via localhost by running...

```bash
mkdocs server
```

...from the project root directory.

Served from localhost: [LUC @localhost](http://127.0.0.1:8000)

### GitHub Actions workflows ###

Stages:

* Validate
* Build & Deploy

TODO: Flesh out this section.
