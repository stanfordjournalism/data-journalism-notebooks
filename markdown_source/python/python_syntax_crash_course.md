
# Python Syntax Crash Course

- [Overview](#overview)
- [Choose a shell](#choose-a-shell)
- [Open and close the shell](#open-and-close-the-shell)
- [Python basics](#python-basics)
- [Code challenge](#code-challenge)

## Overview

This page provides a whirlwind tour of some Python basics, including basic data types,
variables, loops and conditional logic (don't worry, more on these terms below).

We'll run the code in an [interactive Python shell](https://pythonprogramminglanguage.com/repl/) - an environment that lets you test Python code and immediately see the results. It's low technical overhead -- the shell is available on any machine with Python installed -- and quite handy for quick-and-dirty code experimentation.

## Choose a shell

It's fine to do this tutorial using the normal interactive Python shell. Just open a Terminal and type `python` and you're ready to go.

Alternatively, you can install [Ipython][] for an improved version of the shell that will make life a bit easier (it includes code highlighting and other niceties).

To install Ipython, open up a terminal and use [pip][], a tool for installing third-party Python libraries:

> Depending on your Python setup, you may need to use `pip3` below

```
pip install ipython
```

## Open and close the shell

Open a Bash terminal and type `python` or `ipython`.

You should now be in the interactive *Python* shell and see text that resembles the below.

> The Ipython shell will look slightly different

```
Python 3.7.8 (default, Jul 17 2020, 15:36:36)
[Clang 11.0.3 (clang-1103.0.32.62)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
>>>
```

To quit the shell and return to Bash, type `exit()` and hit `return`. Or press `CTRL-D`.

## Python basics

OK, now for a minimalist tour of some Python basics. 

> Be sure to type the below commands into your shell in order to begin internalizing
the syntax.

Data types are among the most basic building blocks of a programming language. Like other languages, Python has a variety of basic [data types](https://www.w3schools.com/python/python_datatypes.asp), including integers, floating-point [numbers](https://www.w3schools.com/python/python_numbers.asp) and [strings](https://www.w3schools.com/python/python_strings.asp).

Type the below values into the interactive shell.

```python
>>> 2
2
>>> 2.5
2.5
>>> "this is a string in double quotes"
>>> "this is a string in double quotes"
'this is a string in double quotes'
>>> 'this is a string in single quotes'
'this is a string in single quotes'
```

You can write "expressions" that combine values of varying data types with [operators](https://www.w3schools.com/python/python_operators.asp). 

Here's a math example:

```python
>>> 2 + 3
5
>>> 2 * 3
6
```

Here's a string example:

```python
>>> 'cats' + 'dogs'
'catsdogs'
>>> 'cats' + ' and ' + 'dogs'
'cats and dogs'
```

Invariably, you'll run into errors, or ["exceptions"](https://www.w3schools.com/python/python_ref_exceptions.asp) in Python lingo. They can be jarring at first, but they're quite helpful. [Learn to love them](embracing_errors.md).

```python
>>> 5 / 0
Traceback (most recent call last):
  File "<ipython-input-15-adafc2937013>", line 1, in <module>
    5 / 0
ZeroDivisionError: division by zero

>>> 'cats' + 5
Traceback (most recent call last):
  File "<ipython-input-16-12ef4a5d9d54>", line 1, in <module>
    'cats' + 5
TypeError: can only concatenate str (not "int") to str
```

You can [compare values](https://www.w3schools.com/python/gloss_python_comparison_operators.asp) in Python.

```python
>>> 1 > 0
True
>>> 1 > 2
False
>>> 'this' == 'this'
True
>>> 'this' == 'that'
False
```

Things start to get interesting when we use [variables](https://www.w3schools.com/python/python_variables.asp). Think of variables as storage containers for values.

```python
>>> height = 10
>>> width = 5
>>> area = height * width
>>> area
50
>>> feline = 'cat'
>>> canine = 'dog'
>>> feline + ' and ' + canine
'cat and dog'
```

You can change the value of variables.

```python
>>> feline = 'dog?'
>>> print(feline)
dog?
>>> x = 1
>>> x = x + 1
>>> x
2
```

The ability to store values in variables allows us to compose increasingly sophisticated programs, by storing the result of one step and using it in another part of a program.

Python includes a variety of [built-in functions](https://www.w3schools.com/python/python_ref_functions.asp) that will come in handy. These are helpful bits of code that can perform certain operations. Typically you need to pass them one or more values as input [arguments](https://www.w3schools.com/python/gloss_python_function_arguments.asp).

The [`len` function](https://www.w3schools.com/python/ref_func_len.asp) lets you count the number of items in a sequence, such as the characters in a string.

```python
>>> len('cat')
3
```

The [`print` function](https://www.w3schools.com/python/ref_func_print.asp)...well...prints things. This one is extremely handy, especially as we start writing larger Python scripts. Let's print the value of the `area` variable we created earlier.

```python
>>> print(area)
50
```

[Lists](https://www.w3schools.com/python/python_lists.asp), or arrays if you're coming from some other fancy programming language, allow you to store a sequence of items. You can create a list by surrounding a series of values in
square brackets `[]`.

```python
>>> [1,2,3]
[1, 2, 3]
```
Lists can store values of different data types.

```python
>>> ['three', 2, 'one']
['three', 2, 'one']
```

You can create an empty list and store it in a variable.

```python
>>> numbers = []
>>> numbers
[]
```

Then, you can [add data](https://www.w3schools.com/python/python_lists_add.asp) to the list.

```python
>>> numbers.append(1)
>>> numbers.append(2)
>>> numbers.append(3)
>>> numbers
[1, 2, 3]
```

But wait, it gets better! You can ["loop"](https://www.w3schools.com/python/python_for_loops.asp) over the items in a list and perform actions on each one.

```python
>>> for number in numbers:
...     print(number * 2)
...
2
4
6
```

Hold up! Wait a minute! Let's talk. A few key things to note about the above code:

* `number` is just a variable name that *automatically* stores each integer in the list as we "iterate" or "loop" through the items, in order. This allows us to use the value in the context of the loop.
* The above code effectively means, `for <variable> in <list>:`, do stuff. There's nothing special about the name `number` for the variable. We could have just as easily said `for hamster in numbers`. But that would be strange.
* Note the colon after `numbers:` and the indentation of the `print` statement. Python uses the colon and [indentation](https://www.w3schools.com/python/python_syntax.asp#python_indentation) (4 spaces by convention) to group related code into a "block". Above, any code that was indented to the same level as the `print` statement would take place in the context of the loop.

Let's add some more statements to the "block" inside the "for" loop. Remember, these operations are repeated for each integer in the list:

```python
>>> for number in numbers:
...     times_2 = number * 2
...     minus_1 = number - 1
...     print(number, '|', times_2, '|', minus_1)
...
1 | 2 | 0
2 | 4 | 1
3 | 6 | 2
```

Above, we printed three separate items for each integer: the original value, the value multliplied by 2, and the value minus 1. And we threw in a few pipes (`|`) for readability. Not too shabby.

Note that the value of `number` did not change despite the math operations performed. That's because we didn't overwrite, or replace, the value stored in `number`. Here's what we did:
 * Grabbed the value stored in the variable by using its name (`number`)
 * Performed a few math operations with it
 * Stored the resulting values of those operations in new variables (`times_2`and `minus_1`)
 * Printed the original number and new values. With some pipes thrown into the mix.
 
 Note that the value stored in `number` only changes when the code block is completed and the "loop" moves to the next item in the list. At that point, the "for" loop automatically assigns the next integer to the `number` variable.

 Good? Good.

Oh, one more note: We also haven't changed the original list of `numbers`:

```python
>>> len(numbers)
3
>>> numbers
[1, 2, 3]
```

Another important feature of Python is the ability to apply [conditional logic](https://www.w3schools.com/python/python_conditions.asp). Let's say we wanted to only print numbers larger than 1.

```python
>>> for number in numbers:
...     if number > 1:
...         print(number)
...
2
3
```

Now we have *two* (yes 2!!) levels of indentation (i.e. two code blocks):

* The first four spaces are standard when looping. Here, we just have one `if` statement at this level.
* Then, we have another four spaces for the `if` block. This ensures the `print` statement will only run if the number is greater than 1.

So that's it (for now). We've only covered a fraction of Python syntax so far, but we're already approaching the point where we can start doing some useful work. 

Be aware that you definitely should *not* expect to remember most of what we just covered. Magical pixie dust will not now issue from your fingers into the machine. Learning to code is a process. You're learning a new langauge. That was your first taste. Let's start burning these new bits into your synapses with a code challenge.

## Code Challenge

Try applying the skills we've covered (and a few new ones) to the following code challenge.

* Copy this list to the interactive Python shell:
   ```python
   animals = ['cat', 'dog', 'canary', 'chihuahua', 'narwhal']
   ```
* Create an empty list called `filtered_animals = []`
* Loop through the list of `animals`
* If the animal's name starts with the letter "c":
   * Print the name in capital letters
   * Add the name to the `filtered_animals` list
* Print the number of `filtered_animals`, preceded by the text `"Number of C-animals: "`. 

The code should output the following:

```
CAT
CANARY
CHIHUAHUA
Number of C-animals: 3
``` 

For this exercise, you'll need to use functionality that is built into Python strings. Review these docs on [string methods](https://www.w3schools.com/python/python_strings_methods.asp) to figure out which ones you'll need. 

Depending on how you approach the problem, you may also need to learn how to [slice strings](https://www.w3schools.com/python/python_strings_slicing.asp) (e.g. select the first character from the animal name).

>The Python walk-through above is sprinkled with links to documentation. Visit the links to refresh and learn more as you work through this code challenge. Reading documentation is a normal part of the coding process!


[Ipython]: https://ipython.readthedocs.io/en/stable/
[pip]: https://pip.pypa.io/en/stable/