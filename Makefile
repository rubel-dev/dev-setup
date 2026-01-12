.PHONY: help test lint format install

help:
	@echo "Available commands:"
	@echo "  make install  Install project in editable mode"
	@echo "  make test     Run tests"
	@echo "  make lint     Run ruff"
	@echo "  make format   Run black"

install:
	pip install -e .

test:
	pytest

lint:
	ruff check src tests

format:
	black src tests
