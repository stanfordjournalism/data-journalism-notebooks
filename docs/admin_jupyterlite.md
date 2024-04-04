## JupyterLite Workflow and Reference

> See [JupyterLite on GH Pages docs](https://jupyterlite.readthedocs.io/en/latest/quickstart/deploy.html)
> for full details on how to update requirements and add new notebooks.

Below are the most important bits for day-to-day usage:

- To add new Jupyter Notebooks to your JupyterLite page, add them to the `/content/` folder.
  - Note, you can run Jupyter Lab locally to test things before deploying (see __Working locally__ below).
- To update pre-existing notebooks, start Jupyter Lab and open the relevant notebooks in the `content/` folder. Alternatively, you can edit Notebooks on the deployed JupyterLite instance on GitHub Pages, and then download the file and save it in the `content/` folder (effectively over-writing the pre-existing version).
- Update the `Pipfile` and `requirements.txt` to add new libs to the JupyterLite instance on GitHub Pages.

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

You can run Jupyter Lab locally to create new notebooks or update pre-existing notebooks.

> Any pushes or merges to to the `main` branch trigger automatic rebuild of the GH Pages JupyterLite site.

Here's the general workflow:

- Create a git branch locally
- Add/edit files in the `content/` directory, which is where our JupyterLite on GitHub Pages expects to find notebooks
- Update both the `Pipfile` **and** `requirements.txt` to include any 3rd-party libraries required by your notebook(s). The `Pipfile` tracks dependencies for local development of notebooks, while GitHub Actions uses `requirements.txt` to install dependencies into our JupyterLite instance hosted on GH Pages.


To develop locally, clone this repo and use a standard `pipenv` workflow:

```bash
# Grab the repo
git clone git@github.com:stanfordjournalism/data-journalism-notebooks.git
cd data-journalism-notebooks/

# If you just cloned, install libs
pipenv install

# Create a new branch
git switch -c my-branch

# Activate the environment and start Jupyter Lab
pipenv shell
jupyter lab

# Add/edit notebooks in the content/ directory.

# If you need to add new requirements, e.g. requests
pipenv install requests

# And don't forget! Also add requests to requirements.txt so it's
# available on our JupyterLite instance!
```

When you're ready to deploy, push your branch to GH, create a Pull
Request, and merge to `main` to trigger the deployment.


## Project structure

Important dirs in this repo

```bash
├── _output
├── content         # JupyterLite notebooks
├── markdown_source # Source Markdown files transferred from Programming in Journalism
├── repl            # JupyterLite configurations
└── scripts         # misc scripts e.g. for conversion from markdown -> jupyter
```

> Built using ➡️ **https://jupyterlite.github.io/demo**
