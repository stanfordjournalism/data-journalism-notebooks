# Stanford ~ Data Journalism Notebooks

A collection of Jupyter Notebooks, mainly based on tutorials from Programming in Journalism.

Goal is to gradually port Markdown-based tutorials to both standard Jupyter Notebooks and JupyterLite.

JupyterLite notebooks are accessible via GitHub Pages: https://stanfordjournalism.github.io/data-journalism-notebooks

> Pushes/merges to `main` trigger automatic rebuild of the GH Pages site.

## JupyterLite Workflow and Reference

> See [JupyterLite on GH Pages docs](https://jupyterlite.readthedocs.io/en/latest/quickstart/deploy.html)
> for full details on how to update requirements and add new notebooks.

Below are the most important bits for day-to-day usage:

- To add new Jupyter Notebooks to your JupyterLite page, add them to the `/content/` folder.
  - Note, you can run Jupyter Lab locally to test things before deploying.
- To update pre-existing notebooks, start Jupyter Lab and open the relevant notebooks in the `content/` folder. Alternatively, you can edit Notebooks on the deployed JupyterLite instance on GitHub Pages, and then download the file and save it in the `content/` folder (effectively over-writing the pre-existing version).
- Update `requirements.txt` to add new libs to the JupyterLite

**IMPORTANT**: To deploy changes:

- Commit the changes to a branch
- Push to GitHub
- Create a pull request from `your-branch` -> `main`
- Approve the PR. The act of merging to `main` should automatically
  deploy your updates to GitHub Pages.

### Reference

- https://jupyterlite.readthedocs.io/en/latest/quickstart/deploy.html
- How-to Guides: https://jupyterlite.readthedocs.io/en/latest/howto/index.html
- Reference: https://jupyterlite.readthedocs.io/en/latest/reference/index.html

## Working locally

You can run Jupyter Lab locally to create new notebooks or update
pre-existing notebooks. Just make sure you:

- Always add/edit files in the `content/` directory, which is where
  JupyterLite expects to find notebooks when it builds and deploys our JupyterLite instance on GitHub Pages
- Don't forget to update both the `Pipfile` **and** `requirements.txt` to include any 3rd-party libraries required by your notebook. The `Pipfile` tracks dependences for local development of notebooks, while GitHub Actions uses `requirements.txt` to install dependencies into the GH Pages JupyterLite instance.


To develop locally, clone this repo and use a standard `pipenv` workflow:

```bash
# Grab the repo
git clone git@github.com:stanfordjournalism/data-journalism-notebooks.git
cd data-journalism-notebooks/

# If you just cloned, install libs
pipenv install

# Activate the environment and start Jupyter Lab
pipenv shell
jupyter lab
```

## Project structure

Important dirs in this repo

```bash
├── _output
├── content         # JupyterLite notebooks
├── markdown_source # Source Markdown files transferred from Programming in Journalism
├── notebooks       # Vanilla Jupyter Notebook conversions from Markdown (ie non-JupyterLite)
├── repl            # JupyterLite configurations
└── scripts         # misc scripts e.g. for conversion from markdown -> jupyter
```



> Built using ➡️ **https://jupyterlite.github.io/demo**
