# ds-uberhacks

Repo to compliment my 10 Data Science Uberhacks to Turbocharge your workflow presentation.

## The Uberhacks

### 1. Github Awesomeness
Awesome curated content. Great for researching and finding more uberhacks.

Some good awesome lists:
* [Awesome Production Machine Learning](https://github.com/EthicalML/awesome-production-machine-learning)
* [Awesome Python](https://github.com/vinta/awesome-python)
* [Awesome Data Science](https://github.com/academic/awesome-datascience)
* [Awesome Data Engineering](https://github.com/igorbarinov/awesome-data-engineering)
* [Awesome Machine Learning](https://github.com/josephmisiti/awesome-machine-learning)

### 2. D-Tale
Eyeball data easily. Use it instead of MS Excel.
* [Dtale Repo](https://github.com/man-group/dtale)
* [Titanic Demo](http://alphatechadmin.pythonanywhere.com/dtale/main/7)

### 3. YData Profiling
EDA as a Service.
* [Y-Data Profiling Repo](https://github.com/ydataai/ydata-profiling)
* [Titanic Demo](https://ydata-profiling.ydata.ai/examples/master/titanic/titanic_report.html)

### 4. TheFuzz
Fuzzy String Matching.
* [TheFuzz Repo](https://github.com/seatgeek/thefuzz)

### 5. UK Open Data
So. Much. Data.
* [ONS](https://www.ons.gov.uk/)
* [Open Data Scot](https://opendata.scot/)
* [NIRSA](https://www.nisra.gov.uk/)

### 6. Yellowbrick
Easy AI Visualisation.
* [Yellowbrick Repo](https://github.com/DistrictDataLabs/yellowbrick)

### 7. Shap
AI Explainability
* [Shap Repo](https://github.com/slundberg/shap)

### 8. Fairlearn
Non-discriminatory AI.
* [Fairlearn Repo](https://github.com/fairlearn/fairlearn)

### 9. Metaflow
Easy Pipelines.
* [Metaflow site](https://metaflow.org)

### 10. Make
CLI maker-easier.
* [Make site](https://www.gnu.org/software/make)

#### Usage
1. Check the Makefile in this repo - it contains some basic recipes for creating a conda 
environment and running a main.py file, but you can add stuff like Docker, Cloud tasks etc. 
to it... Anything and everything involving the CLI.
2. The Makefile is linked to the `.env` file. If you specify a variable in the .env, Make will
read it and use it.
3. Using Make is simple: `make <command>`. You can type `make help` or just `make` for a list 
of commands.
4. For the `create-environment` command, Make will install everything in `requirements-conda.txt`
and then everything in `requirements-pip.txt`
5. I've recently stopped trying to `conda install` anything. The general consensus is that it's 
broken due to the length of time it takes solving environments and such. As such, all requirements 
are in the `requirements-pip.txt` file. I'll still use `conda` as my package manager because it's
interoperable with cloud platforms and MLFlow, but yeah `conda install` sucks now. I hope they
find a way to fix it 😫.
6. Feel free to use this Makefile and setup as a base. I can't claim credit for it. I stole the
Makefile from [Yuxiang Gong's tutorial](https://medium.com/@ygong/create-virtualenv-for-data-science-projects-with-one-command-only-7bec3548419f)
which is also probably a good place to start for learning more about it. 
7. Remember... Make is pre-installed on linux, available via XCode on mac and via choco on Windows!


### More Uberhacky Things...

These didn't make the list for one reason or another, but are still worth checking out!

* [polars](https://github.com/pola-rs/polars): High Performance Computing (HPC) in Python
* [dask](https://github.com/dask/dask): Like Spark but on your machine
* [splink](https://github.com/moj-analytical-services/splink): Data linking at scale
* [ydata-synthetic](https://github.com/ydataai/ydata-synthetic): Synthetic data generator
* [python-dp](https://github.com/OpenMined/PyDP): Python data privacy
* [scikit-plot](https://github.com/reiinakano/scikit-plot): AI explanation & visualisation
* [lime](https://github.com/marcotcr/lime): Quicker explainable AI
* [pyLDAvis]https://github.com/bmabey/pyLDAvis): Interactive topic model visualisation
* [mlflow](https://github.com/mlflow/mlflow): AI tracking & serving
* [nbstripout](https://github.com/kynan/nbstripout): Remove Jupyter output cells from git
* [loguru](https://github.com/Delgan/loguru): Easy, colourful logging
* [Excalidraw](https://excalidraw.com/): Online collaborative whiteboarding
* [Github copilot ($)](https://github.com/features/copilot): Predictive coding AI
* [DuckDB](https://github.com/duckdb/duckdb): SQLite for analytics
* [Streamlit](https://github.com/streamlit/streamlit): R Shiny! In Python
* [SparseSC](https://github.com/microsoft/SparseSC): Synthetic Control & A/B testing
