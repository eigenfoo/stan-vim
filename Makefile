.DEFAULT_GOAL = help

PYTHON := python3
PIP := pip3
CONDA := conda
SHELL := bash

.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --no-builtin-rules

.PHONY: help
help:
	@printf "Usage:\n"
	@grep -E '^[a-zA-Z_-]+:.*?# .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?# "}; {printf "\033[1;34mmake %-10s\033[0m%s\n", $$1, $$2}'

.PHONY: venv
venv:  # Set up a Python virtual environment for testing.
	@printf "Creating Python virtual environment...\n"
	rm -rf venv/
	${PYTHON} -m venv venv/
	source venv/bin/activate
	${PIP} install -U pip
	${PIP} install -r tests/requirements.txt
	deactivate
	@printf "\n\nVirtual environment created! \033[1;34mRun \`source tests/venv/bin/activate\` to activate it.\033[0m\n\n\n"

.PHONY: test
test:  # Test code using pytest.
	${PYTHON} tests/test_function_coverage.py

.PHONY: clean
clean:  # Clean project directories.
	rm -rf __pycache__/
	find tests/ -type d -name "__pycache__" -exec rm -rf {} +
	find tests/ -type d -name "__pycache__" -delete
	find tests/ -type f -name "*.pyc" -delete
