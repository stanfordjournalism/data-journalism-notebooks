# Workflow Advice

General advice on sundry topics such as working in the shell.

## Working in the shell

### Create a code workspace

When first learning the bash command line, it's helpful to organize projects in a single place.

Open a shell and type the following to create a `code/` directory on your Desktop.

```
mkdir ~/Desktop/code
```

Whenever you open a shell, remember that you'll start out in the Home directory (typically something like `/Users/yourname` on a Mac).

Before starting a new project, it's a good idea to navigate over to your code directory.

```
cd ~/Desktop/code
```

Better yet, create a new folder in the `code` directory and work inside of that.

```
cd ~/Desktop/code
mkdir new-project
cd new-project
```

If you're ever confused about which directory you're in on the command line, type `pwd` to print the "working" directory.

### Tinker, copy, run. Repeat

If you're working on a [shell script](http://swcarpentry.github.io/shell-novice/06-script/index.html) that requires multiple commands (e.g. creating a script that downloads and processes data), a common workflow is to start by experimenting with the commands directly in the shell.

Once you're confident that a command is working as expected, copy and paste the command over to the script. Then run the script to verify all the steps work together.

You can repeat this process to incrementally build out a script.

Check out the YouTube video [Tinker, copy, run. Repeat](https://youtu.be/uHO3YErEJqg) and the related [slide deck][] for an overview using a Bash shell script example.

> And don't forget: You should be using a proper code editor such as Visual Studio Code to create and edit shell scripts.


[slide deck]: https://docs.google.com/presentation/d/e/2PACX-1vRscVnM94RK9BLCwM-u3qA1zcGeCabw2wZ-2ii8h7x6HRxBIoz3HxjK8qhFLsde9bd2TdAimTMOvZOe/pub?start=false&loop=false&delayms=3000


### Recovering "lost" commands

You can easily review a history of commands you've typed on a shell by invoking the [history](https://www.rootusers.com/17-bash-history-command-examples-in-linux/) command.

```
history
```

If you're trying to pinpoint certain commands, you can also filter the list returned by `history`:

```
# Example searching for commands that operated on CSVs
history | grep csv
```

## Python

### Interactive shell

Python ships with an interactive interpreter that you can fire up from any shell terminal by simply typing `python`. This interactive environment allows you to test out Python code in a live environment. It's incredibly useful for experimenting with code prior to moving into a longer script (similar to the workflow described above for tinkering on the shell).

For this course, however, we recommend installing [ipython](https://ipython.readthedocs.io/en/stable/), a more user-friendly and feature-rich version of the Python interactive interpreter.

```
pip install ipython
```

Now fire it up.

```
ipython
```

Once you're done working, exit the Python interpreter and return to the regular bash shell:

```
# Either type `CTRL + d` or
exit()
```