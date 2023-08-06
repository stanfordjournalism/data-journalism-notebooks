# Dictionary basics

- [Overview](#overview)
- [The basics](#the-basics)
- [Initializing records (in loops)](#initializing-records)
- [Further reading](#further-reading)

## Overview

Python dictionaries are flexible storage containers that, similar to lists, are a major workhorse for doing real work with the language.

Dictionaries allow you to store values of varying types, from  simple integers and strings to lists, dictionaries and other data types and objects. 

Whereas items in lists are stored and looked up by position,  items in dictionaries are stored using a *unique name*, or "key".

## The basics

Dictionaries are enclosed with curly braces (`{}`) and contain key-value pairs that are separated by a colon (`:`).
Each key-value pair is separated by a comma (`,`).

> Below examples are from an interactive Python shell session (hence the chevrons and elipses).

```python
>>> candidate = {
...     'name': 'Jane Doe',
...     'office': 'governor',
...     'winner': True
... }
```

You can [look up values](https://www.w3schools.com/python/python_dictionaries_access.asp) in a dictionary by key:


```python
>>> candidate['office']
'governor'
```

You can [insert values](https://www.w3schools.com/python/python_dictionaries_add.asp) into a dictionary by assigning a value to some key:

```python
>>> candidate['winner'] = True
>>> candidate
{'name': 'Jane Doe', 'office': 'governor', 'winner': True}
```

Similarly, you can [update a value](https://www.w3schools.com/python/python_dictionaries_change.asp) by key:

```python
>>> candidate['winner'] = False
>>> candidate['winner']
False
``` 

Key-value pairs, or *items*, can be [removed](https://www.w3schools.com/python/python_dictionaries_remove.asp) by key:

```python
>>> candidate.pop('winner')
False
>>> candidate
{'name': 'Jane Doe', 'office': 'governor'}
```

Python will squawk at you if you try to look up a key that doesn't exist:

```python
>>> candidate['party']
Traceback (most recent call last):
  File "<ipython-input-15-92d99af8a5b1>", line 1, in <module>
    candidate['party']
KeyError: 'party'
```

Dictionaries offer some [helpful methods](https://www.w3schools.com/python/python_dictionaries_methods.asp) to simplify their usage.

The [`keys()`](https://www.w3schools.com/python/ref_dictionary_keys.asp) method provides a list of all the keys in the dictionary:

```python
>>> candidate.keys()
dict_keys(['name', 'office'])
``` 

You can use [`values()`](https://www.w3schools.com/python/ref_dictionary_values.asp) a list of all the values:

```python
>>> candidate.values()
dict_values(['Jane Doe', 'governor'])
```

And you can use [`items()`](https://www.w3schools.com/python/ref_dictionary_items.asp) to get a list of all the key-value pairs, where each pair is as a two-element tuple (a list-like structure that cannot be modified):

```python
>>> candidate.items()
dict_items([('name', 'Jane Doe'), ('office', 'governor')])
```

When you [loop over a dictionary](https://www.w3schools.com/python/python_dictionaries_loop.asp), each key is automatically assigned to the specified variable so that you can look up it's value inside the loop:

```python
>>> for key in candidate:
...     print(key, candidate[key])
...
name Jane Doe
office governor
``` 

If you need both the key *and* the value for some operation, it's often simpler to use the `.items()` method:

```python
>>> for key, val in candidate.items():
...     print(key, val)
...
name Jane Doe
office governor
```

Dictionaries can contain arbitrarily nested data -- i.e. lists and other dictionaries, for instance. They offer a flexible way to craft data structures suitable for the task at hand.

Imagine we needed to store some information about political candidates, organized by the office they're seeking.

```python
>>> election = {}
>>> election['race'] = 'governor'
>>> election['candidates'] = []
>>> election
{'race': 'governor', 'candidates': []}
>>> election['candidates'].append({'name': 'Jane Doe', 'party': 'DEM'})
>>> election['candidates'].append({'name': 'John Smith', 'party': 'GOP'})
```

Dictionaries can get a bit gnarly to read in the shell, so we'll import and use `pprint` to more nicely format the `election` data:


```python
>>> from pprint import pprint
>>> pprint(election)
{'candidates': [{'name': 'Jane Doe', 'party': 'DEM'},
                {'name': 'John Smith', 'party': 'GOP'}],
 'race': 'governor'}
```

Above, we see that the `candidates` key stores a list, which in turn stores a series of dictionaries with candidate information.

You could continue adding data to the top-level dictionary or to nested pieces of this data, based on availbe data and your program's needs.

A good rule of thumb, however, is to limit the amount of "nesting" to two or three levels. Anything beyond that can become unwieldy to manage.

## Initializing records

A common gotcha when using dictionaries is attempting to update a value that doesn't yet exist. Recall from earlier that we'll get an error if we try to look up key that is not yet present in the dictionary:

```python
>>> election['date']
Traceback (most recent call last):
  File "<ipython-input-35-cfdd26cf53fd>", line 1, in <module>
    election['date']
KeyError: 'date'
```

Let's say that we have some county-level vote counts for candidates in a gubernatorial election.

> You can copy/paste the below into an interactive Python shell to follow along.

```python
votes = [
  {
    "name": "Jane Doe",
    "votes": 10,
    "county": "Santa Clara County"
  },
  {
    "name": "Jane Doe",
    "votes": 10,
    "county": "San Mateo County"
  },
  {
    "name": "John Smith",
    "votes": 10,
    "county": "Santa Clara County"
  },
  {
    "name": "John Smith",
    "votes": 5,
    "county": "San Mateo County"
  }
]
```

If we wanted to get a total vote count for each candidate, we could loop over the list and tally each candidate's votes by name. This is very similar in concept to a SQL [GROUP BY](https://www.w3schools.com/SQL/sql_ref_group_by.asp) query. 

> Note, in real life we'd want to use a safer "unique" key for each candidate to guard against scenarios where two candidates have the same name. It happens.

Here's a first attempt at that strategy. We start by creating an empty dictionary to store totals by candidate name. Then we try looping over each candidate to update the vote count. 

```python
>>> candidates = {}
>>> for vote in votes:
...     name = vote['name']
...     candidates[name] += vote['votes']
...
Traceback (most recent call last):
  File "<ipython-input-46-951ad2f31622>", line 3, in <module>
    candidates[name] += vote['votes']
KeyError: 'Jane Doe'

```

Whoops! That didn't go as expected! The problem above is that our empty `candidates` dictionary does not yet contain an entry for any of the candidates in `votes`. What we need is a way to "initialize" an entry for these candidates on the first encounter, while on subsequent encounters we simply add the value to the pre-existing entry.

Below is one way to approach this problem:


```python
>>> for vote in votes:
...     name = vote['name']
...     if name not in candidates:
...         candidates[name] = vote['votes']
...     else:
...         candidates[name] += vote['votes']
...
>>> candidates
{'Jane Doe': 20, 'John Smith': 15}
```

Above, we used an `if/else` conditional to check if the key is present in the dictionary. If not, that's an indication that it's the first time we've seen this candidate, so we simply insert the candidate and set its value to the vote count. Otherwise, we look up the value and update it by adding the latest vote count to the pre-existing value.

The above works, but it's not considered "Pythonic." Here's a more idiomatic approach that follows the [EAFP](https://stackoverflow.com/questions/11360858/what-is-the-eafp-principle-in-python) principle embraced by Pythonistas.


```python
>>> candidates = {}
>>> for vote in votes:
...     name = vote['name']
...     votes = vote['votes']
...     try:
...         candidates[name] += votes
...     except KeyError:
...         candidates[name] = votes
...
>>> candidates
{'Jane Doe': 20, 'John Smith': 15}
```

Above, we use a [try/except](https://www.w3schools.com/python/python_try_except.asp) clause to first attempt adding votes to a pre-existing key. The code in the `try` block will raise a KeyError on the first encounter of a candidate, in which case we trap that error and simply insert the candidate's name and vote count. On all subsequent encounters of the candidate, the code inside the `try` block will work.

## Further reading

There's plenty more you can do with dictionaries. To learn more, check out:

* [W3Schools Python Dictionaries](https://www.w3schools.com/python/python_dictionaries.asp)
* [Chapter 5](https://automatetheboringstuff.com/2e/chapter5/) of *Automate the Boring Stuff, 2nd Edition*