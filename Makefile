.DEFAULT_GOAL := help

help:
	@echo "Makefile for Jupyter lite"
	@echo
	@echo "Usage:"
	@echo "    make lint      run the linter"
	@echo "    make serve     start Jupyter lite"
	@echo

lint: ## run the linter
	flake8 ./

serve: ## start Jupyter lite
	jupyter lite serve --contents content --port 8888


# Mark all the commands that don't have a target
.PHONY: help \
        lint \
        serve
