# Based on: https://towardsdatascience.com/create-virtualenv-for-data-science-projects-with-one-command-only-7bec3548419f
# Info re conda-lock: https://pythonspeed.com/articles/conda-dependency-management/

# Load in Environment Variables from a .env file
include .env
export $(shell sed 's/=.*//' .env)

# Variables to activate and deactivate the conda environment
ACTIVATE = source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ; conda activate
DEACTIVATE = source $$(conda info --base)/etc/profile.d/conda.sh ; conda deactivate ; conda deactivate

# Help
.DEFAULT_GOAL := help
.PHONY: help
help:
	awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z0-9_-]+:.*?##/ { printf "  \033[36m%-18s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

# Environment Management
.PHONY: create-environment 
create-environment: ## Create the conda environment & jupyter kernel
	conda create --name $(CONDA_ENVIRONMENT_NAME) --channel conda-forge --yes python=$(PYTHON_VERSION)
	$(ACTIVATE) $(CONDA_ENVIRONMENT_NAME) && \
	conda config --add channels conda-forge && \
	conda config --set channel_priority strict && \
	conda install --yes --file requirements-conda.txt && \
	conda update pip && \
	pip install -r requirements-pip.txt && \
	conda env export --name $(CONDA_ENVIRONMENT_NAME) -no-builds > environment.yaml && \
	ipython kernel install --user --name $(CONDA_ENVIRONMENT_NAME) && \
	nbstripout --install --attributes .gitattributes
	$(DEACTIVATE)

.PHONY: remove-environment 
remove-environment: ## Remove the environment and any relevant files
	conda env remove --name $(CONDA_ENVIRONMENT_NAME)


# Execution
.PHONY: run
run: ## Run the application
	$(ACTIVATE) $(CONDA_ENVIRONMENT_NAME) && \
	python -m main --env .env
	$(DEACTIVATE)