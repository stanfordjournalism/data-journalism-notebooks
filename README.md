# Stanford ~ Data Journalism Notebooks

A collection of Jupyter Notebooks used in the Stanford Graduate Journalism Program for training in basic code wrangling and data analysis with Python.

> Project administrators should check out [these docs](docs/admin_jupyterlite.md) for details on managing the Jupyter Lite install on GH Pages

## Same Notebooks, Multiple Environments

We strive to make it as easy as possible to work with these Notebooks by providing them in multiple environments. 

If you're brand new to coding, you may want to start with the "zero-install" environment for **Beginners** (see below). 

If you have prior experience with Jupyter Notebooks but are wary of setting up Python and installing libraries such as `pandas` on your own machine, then the **Beginner-to-Intermediate** option using Codespaces is a good next step.

If you're an old hand at Python and Jupyter, clone away!

There are three ways to access the notebooks:

- **Beginners**: [Zero-install browser mode](https://stanfordjournalism.github.io/data-journalism-notebooks) - Runs on [JupyterLite](https://jupyterlite.readthedocs.io/en/stable/). Tutorials that work with remote files (e.g. using the `requests` library) will not work, and your mileage may vary depending on OS and browser (Safari is *not* recommended; Chrome and Firefox tend to work best)
- **Beginner-to-Intermediate**: [GitHub Codespaces](https://github.com/features/codespaces) - Run the code in a cloud "container" supplied by GitHub. Also very little install required and all notebooks (including those on APIs/weblscraping) should work using a "traditional" Notebook workflow.
- **Intermediate**: Clone this repo to your local machine and run the notebooks using your favored workflow.

See below for an overview of JupyterLite and Codespaces.

## Running Notebooks in the Cloud

### Option 1: Using JupyterLite

1. Open your web browser and visit the following URL: https://stanfordjournalism.github.io/data-journalism-notebooks

2. Navigate to the notebook you want to run and click on it to open. The [README](https://stanfordjournalism.github.io/data-journalism-notebooks/lab?path=README.ipynb) is a good place to start.

### Option 2: Using GitHub Codespaces

1. Make sure you have a GitHub account. If you don't have one, you can sign up for free at [https://github.com/signup](https://github.com/signup).

2. Open the repository containing the Jupyter Notebooks in GitHub.

3. Click on the green "Code" button and select "Open with Codespaces".

4. A new Codespace will be created -- this can take a few minutes -- and the repository will be loaded in the browser-based development environment.

5. In the file explorer on the left, open the `content` folder, navigate to the notebook you want to run, and click on it to open. A good starting point is `content/README.ipynb`, which provides an overview of and links to all resources. 

> Here's a [YouTube video](https://youtu.be/Zf9F6ddK3ks) on working with the notebooks on Codespaces.
