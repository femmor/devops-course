# Python Cheat Sheet<img align="left" width="30px" alt="Terminal" src="../images/icons/python.png" style="padding-right:10px;" /> 

## Installing Python
https://www.python.org/downloads/
| Command | Description | Example |
| --- | --- | --- |
| `python --version` | Get the version of Python | `python --version` |
| `python3 --version` | Get the version of Python 3 | `python3 --version` |
| `python3 -m pip --version` | Get the version of pip | `python3 -m pip --version` |

## Pip - Python Package Manager
Pip is a package manager for Python that helps manage dependencies. It is installed by default with Python 3.4 and above. If you are using Python 3.3 or below, you will need to install it separately.
```
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
#if your python is installed as python3 then..
python3 get-pip.py
```
Note: *Some installations will require you to use* `pip3` *instead of* `pip`
| Command | Description | Example |
| --- | --- | --- |
| `pip --version` | Get the version of pip | `pip --version` |
| `pip install <package_name>` | Install a package | `pip install matplotlib` |
| `pip install <package_name>==<version>` | Install a specific version of a package | `pip install matplotlib==3.3.1` |
| `pip uninstall <package_name>` | Uninstall a package | `pip uninstall matplotlib` |
| `pip install -r requirements.txt`|Install packages from a requirements file|`pip install -r requirements.txt`|


## Running Python
|Python Functions| Description | Example |
|---|---|---|
|`python`|Enter Python IDLE| `python` opens Python IDLE - Integrated Development Environment (IDE)|
|`python <scriptname.py>`|Run a script| `python hello.py` runs the script 'hello.py'|
|`python -m <modulename> <arguments>`|Run a module| `python -m http.server 8000` runs the module http server module on port 8000|


## Virtual Environments
Virtual environments are used to sandbox and manage dependencies in different projects. If you have a server that needs to run a lot of different scripts, you can create a virtual environment for each script and install the dependencies for that script in that environment. This will prevent conflicts between different scripts.
|venv Functions| Description | Example |
|---|---|---|
|`venv <name>`|Create a venv| `venv my_env` creates a venv called my_env|
|`source <name>/bin/activate`|Activate a venv| `source my_env/bin/activate` activates the venv called my_env|
|`deactivate`|Deactivate a venv| `deactivate` deactivates the current venv|
|`pip install <package>`|Install packages to venv| `pip install numpy` installs the numpy package to the current venv|


## Math
Python has a lot of built in math functions that you can use. 
|Math Functions| Description | Example |
|---|---|---|
|`<num1> + <num2>`|Add two numbers| `1 + 1` returns 2|
|`<num1> - <num2>`|Subtract two numbers| `10 - 5` returns 5|
|`<num1> * <num2>`|Multiply two numbers| `3 * 5` returns 15|
|`<num1> / <num2>`|Divide two numbers| `9 / 3` returns 3|
|`<num1> % <num2>`|Calculate modulo of two numbers| `10 % 3` returns 1|

## Importing a Package
Packages are a collection of modules that you can use in your scripts. You can import a package with the `import` keyword.
| Command | Description | Example |
| --- | --- | --- |
| `import <package_name>` | Use a package | `import matplotlib` |


## String Functions
String functions allow for manipulation of text, such as joining, splitting, or replacing. 
|String Functions| Description | Example |
|---|---|---|
|`len(<string>)`|Find length of string| `len('hello')` returns 5|
|`<string1> + <string2>`|Concatenate strings| `'hello' + 'world'` returns 'helloworld'|
|`<string>.upper()`|Make string uppercase| `'hello'.upper()` returns 'HELLO'|
|`<string>.lower()`|Make string lowercase| `'Hello'.lower()` returns 'hello'|
|`<string>.strip()`|Strip whitespace from string| `'  hello  '.strip()` returns 'hello'|
|`<string>.replace(<old>, <new>)`|Replace text in strings| `'hello world'.replace('world', 'universe')` returns 'hello universe'|



## Data Structures
Data structures store and organize information, such as lists, tuples, and dictionaries. 
| Command | Description | Example | 
| --- | --- | --- |
| `my_list = [<item1>, <item2>, <item3>]` | Create list | `my_list = [1, 2, 3]` |
| `my_dict = {"key1": <value1>, "key2": <value2>}` | Create dictionary | `my_dict = {"name": "John", "age": 24}` |
| `my_tuple = (<item1>, <item2>, <item3>)` | Create tuple | `my_tuple = ("John", 24, "male")` |
| `my_list[<index>]` | Access list item | `my_list[0]` |
| `my_dict["key1"]` | Access dictionary value | `my_dict["name"]` |
| `my_tuple[<index>]` | Access tuple item | `my_tuple[1]` |
| `len(my_list)` | Get length of list | `len(my_list)` |
| `len(my_dict)` | Get length of dictionary | `len(my_dict)` |
| `len(my_tuple)` | Get length of tuple | `len(my_tuple)` |

## Functions
Functions are processes that take in data and output a result, such as addition or multiplication. 
| Command | Description | Example |
| --- | --- | --- |
| `def my_function(<arg1>, <arg2>):` | Create a function with two arguments | `def add_two_numbers(x, y):` |
| `my_function(<arg1>, <arg2>)` | Call a function with two arguments | `add_two_numbers(5, 7)` |
| `return <value>` | Return a value from a function | `return x + y` |
| `<function_name>(<arg1>, <arg2>)` | Pass a function as an argument | `print(add_two_numbers(5, 7))` |

## Control Logic
Control logic manages the flow of a program, determining when certain functions should be executed. 
|Action|Description|Example|
|--|--|--|
|Create function|Defining a function with arguments|`def my_function(<arg1>, <arg2>):`|
|Call function|Invoking a function with arguments|`my_function(<arg1>, <arg2>)`|
|Return value|Returning a value from a function|`return <value>`|
|Pass argument|Passing a function as an argument|`<function_name>(<arg1>, <arg2>)`|

## Conditionals
An expression that evaluates to either true or false and controls the flow of a program.
| Syntax | Description | Example |
|--------|-------------|---------|
| `if <condition>` | Conditionally execute a block of code | `if count == 0:` |
| `else` | Execute a block of code if the condition is false | `else:` |
| `elif <condition>` | Execute a block of code if a different condition is true | `elif count == 5:` |

## Loops
Repeats a set of instructions until a certain condition is met.
| Syntax | Description | Example |
|--------|-------------|---------|
| `for <item> in <iterable>` | Iterate over each item in an iterable object | `for i in range(5):` |
| `while <condition>` | Execute a block of code while a condition is true | `while count < 10:` |
| `break` | Exit a loop | `break` |
| `continue` | Skip the rest of the current loop iteration | `continue` |

## Classes
Classes are templates for creating objects, and can have attributes, methods, and inheritance. 
| Syntax | Description | Example |
| --- | --- | --- |
| `class <MyClass>:` | Create a class | `class MyClass:` |
| `my_instance = MyClass()` | Create instance of class | `my_instance = MyClass()` |
| `my_instance.attribute` | Access instance attribute | `my_instance.attribute` |
| `def my_method(self, <arg1>, <arg2>):` | Create instance method | `def my_method(self, x, y):` |
| `my_instance.my_method(<arg1>, <arg2>)` | Call instance method | `my_instance.my_method(x, y)` |

## Miscellaneous
| Function | Description | Example |
| -------- | ----------- | ------- |
| `os.getcwd()` | Get the current working directory | `os.getcwd()` |
| `os.chdir(<path>)` | Change the current working directory | `os.chdir('/home/user/Documents/')` |
| `os.environ` | Get environment variables | `os.environ['HOME']` |
| `os.system(<command>)` | Execute shell commands | `os.system('ls -al')` |

## Regular Expressions
Regular expressions are a syntax used to match patterns in strings, such as phone numbers, emails, or words.
| Function | Description | Example | 
| -------- | ----------- | ------- |
| `re.match(<pattern>, <string>)` | Matches a string to a regular expression pattern | `re.match("hello", "hello world")` |
| `re.search(<pattern>, <string>)` | Searches a string for a regular expression pattern | `re.search("hello", "hello world")` |
| `re.split(<pattern>, <string>)` | Splits a string based on a regular expression pattern | `re.split("\s", "hello world")` |
| `re.findall(<pattern>, <string>)` | Finds all matches of a regular expression pattern in a string | `re.findall("\d", "123 Hello")` |
| `re.sub(<pattern>, <replace>, <string>)` | Substitutes regular expression matches with a given string | `re.sub("\s", "-", "hello world")` |