.ONESHELL:
SHELL=/bin/bash
CONDA_ACTIVATE=source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ; conda activate
ENV_NAME=mystery_box

help: ## Show this help
	@egrep '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

init: ## Create development environment using conda & poetry
	conda create --force -n $(ENV_NAME) -c conda-forge python=3.10
	$(CONDA_ACTIVATE) $ENV_NAME
	poetry install

install-poetry: ## Install poetry for Linux
	curl -sSL https://install.python-poetry.org | python3 -

install-miniconda: ## Install miniconda for Linux
	curl -sSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh | bash -s  -- -b

.PHONY: help init test

