#  Data Analysis with Jupyter and pandas

- [Jupyter Notebooks](#jupyter-notebooks)
- [Jupyter use cases](#jupyter-use-cases)
- [Narrative with Markdown](#narrative-with-markdown)
- [pandas](#pandas)

## Jupyter Notebooks

The [Jupyter](https://jupyter.org/) notebook is an interactive coding environment especially well-suited for data analysis. It provides a browser-based interface that is much more user-friendly than the Python interactive interpreter.

The ability to blend narrative with code and visualizations has made Jupyter notebooks an increasingly popular tool among data journalists. With Jupyter, it's a cinch to create readable, reproducible data analyses that can be shared with fellow reporters, editors or the public.

Jupyter typically runs on a local web server, although a number of platforms and services allow you to view notebooks online and even work with Jupyter without having to install anything.

* [Binder](https://mybinder.org/)
* [Github](https://docs.github.com/en/repositories/working-with-files/using-files/working-with-non-code-files#working-with-jupyter-notebook-files-on-github)
* [Google Colab](https://colab.research.google.com/)
* [Kaggle](https://www.kaggle.com/)
* [nbviewer](https://nbviewer.org/)


A growing number of newsrooms use Jupyter notebooks to collaborate internally, as well as share their work with the public. The Los Angeles Times Data Desk uses Jupyter to tell data-driven stories such as this [analysis of California homes within fire zones][].

Better yet, LAT journalists [share their analyses](https://github.com/datadesk/notebooks) with the world, as does [BuzzFeed News](https://github.com/BuzzFeedNews?language=jupyter+notebook).

[analysis of California homes within fire zones]: https://www.latimes.com/projects/la-me-california-buildings-in-fire-zones/

## Jupyter use cases

Jupyter is often used for all steps in a data project, from data acquisition through analysis and visualization.

A Jupyter-only workflow can be especially helpful on projects with relatively small data sets. By performing all data work in Jupyter, you can minimize context switching and technical overhead.

As projects grow in size, it can be helpful to split a long Jupyter
notebook into several smaller notebooks. For example, you might create a
notebook to handle a long-running web scrape and preprocessing of data,
along with additional notebooks for varying lines of analysis or
different story angles.

Don't forget that you can run complex or time-consuming data acquisition processes **outside of Jupyter** using normal Python scripts, perhaps as part of a [multi-step data pipeline](data_pipelines_with_modules.md).

Such pipelines, especially if they need to run on a regular basis, are often best suited for execution on virtual machines in the cloud that do not have a graphical interface. In such an environment, it can be easier to set up and debug a traditional Python script than a notebook. An added benefit: Running code in the cloud frees you from the chore of managing the script on your own computer, especially when that code needs to run frequently or at odd hours.

And of course, the data produced by such a script is always accessible to a Jupyter notebook during the analysis phase.

### Disclaimers

It should be noted that these recommendations are more a matter of taste
than hard and fast rules.

You *can*, for example, [run a Jupyter notebook on the command line][], similar to a standard Python script. However, debugging notebooks in such a command-line context can be a nightmare.

Another alternative is to [convert the Jupyter notebook to a standard Python script][]. This can provide an elegant way to generate more useful scripts for code that needs to run in non-graphical environments.

For this course, however, we'll decouple "expensive" data acquisition steps from Jupyter in order to keep notebooks light-weight and focused on data wrangling and analysis. Splitting our workflow in this way also provides opportunities to gain practice writing clean, well-organized code using functions and modules.

[run a Jupyter notebook on the command line]: https://docs.jupyter.org/en/latest/running.html#using-a-command-line-interface
[convert the Jupyter notebook to a standard Python script]: https://nbconvert.readthedocs.io/en/latest/usage.html#executable-script

## Narrative with Markdown

Here's a [basic guide](https://www.markdownguide.org/basic-syntax) to getting started with Markdown, a simple language for generating formatted text.

## pandas

The [pandas][] library is the workhorse of data wrangling and analysis in Python. It provides a wide range of functionality for common data tasks such as filtering, joining, and aggregating data.

pandas is a big library and its [official documentation](https://pandas.pydata.org/pandas-docs/stable/user_guide/index.html#user-guide) can be a bit intimidating for beginners.

Below are a few resources that can help level up on [pandas][]:

- [First Python Notebook][]
- [Kaggle pandas tutorial](https://www.kaggle.com/learn/pandas)
- [10 Minutes to pandas](https://pandas.pydata.org/docs/user_guide/10min.html)
- Pandas cheat sheets (print these\! They're awesome\!)
  -  [Data Wrangling](https://pandas.pydata.org/Pandas_Cheat_Sheet.pdf) - great overview of common data(frame) tasks such as merge, group, sort, filter, etc.
  -  [Pandas Basics for Data Science](https://s3.amazonaws.com/assets.datacamp.com/blog_assets/PandasPythonForDataScience.pdf) - includes pandas basics with details on working with CSV, Excel, and SQL. Just beware some of the syntax is out of date

[First Python Notebook]: https://palewi.re/docs/first-python-notebook/
[pandas]: https://pandas.pydata.org/pandas-docs/stable/user_guide/index.html#user-guide
