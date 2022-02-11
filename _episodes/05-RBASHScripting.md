---
title: "R & BASH Scripting"
teaching: 10
exercises: 20
questions:
- "TBD"
objectives:
- "TBD"
keypoints:
- "TBD"
---

So, we can use functions and evaluate mathematical expressions in BASH like we have done using the R programming language in RStudio. But our experience coding while using the BASH terrminal and command line so far has not been nearly as easy and streamlined as when using RStudio. For example, we have to write code in the restrictive and clunky terminal user interface. 

## R & BASH Scripting

We can use BASH scripting to make the process of coding with BASH a bit more simple. BASH scripts are text files that have the **.sh** file extension. These are text files that you can use to save the lines of BASH code that you want the interpreter componenet of the computer operating system to execute (run).

![The Interpreter Operating System Component](../fig/interpreter.png){: width="500" }
*[Image source][interpreterComp]*

There are several great text editors available for creating and editing code in a huge variety of programming languages. Just a few [popular options][popularEdits]:
- Sublime Text
- Atom
- Notepad++
- Vim

> ## Tip!
>
> There are s couple of extremely useful features of RStudio that are helpful for working with BASH:
> - the *source* component of RStudio is essentially a text editor that you can use RStudio to create and edit any type of text file
> - the *console* component has a *terminal* tab, which gives you access to the BASH *command line*
{: .callout}

Not only can we save the code we have written by using BASH and R scripts, but we can also use scripting to create modular pieces of code. This is useful for automating repetative tasks and data analysis. It is also possible to have scripts recieve user inputs (arguments), just like the *built-in* and *user-defined* functions we have been using in R and BASH.


## R & BASH Function Definitions

A powerful benefit of coding in BASH and R is the ability to create our own *user-defined* function definitions. This allows us to re-use a set of code statements arranged to perform a specific task. 

In R a function is created (defined) by using the keyword **function**. The basic syntax of an R function definition is as follows:

~~~
function_name <- function(arg_1, arg_2, ...) {
   # function body 
}
~~~
{: .language-r}

It is also possible to create user-defined functions in BASH using the following syntax:
~~~
function_name () {
  # function body
}
~~~
{: .language-r}

> ## Checklist
>
> Note that a function definition in R has the following components:
> - **function name** − the name of the function, which is stored in R environment as an R object with this name
> - **function keyword** - this is the tag word *function* that is always included before the parentheses with the list of arguments
> - **arguments** − an optional placeholder for when a function is called (invoked). If a function has arguments and they do not have default values, you need to give (pass) values to the arguments
> - **function body** − contains a collection of code statements that defines what the function does
> - **return value** − the last expression evaluated in the function body
>
> Furthermore, the simplest form of function definitions in BASH have the following components:
> - **function name** − the name of the function, which is stored in R environment as an R object with this name
> - **function body** − contains a collection of code statements that defines what the function does
{: .checklist}

> ## Challenge
>
> How can you view the documentation for the **function** R function in RStudio?
>
>> ## Solution
>> 
>> While typing in **?function** a message will pop up suggesting relevant R functions. While hovering your mouse over the **function** R function in the pop up, press F1.
>> 
>> ![RStudio function Help Tip](../fig/functionHelp.png){: width="500" }
> {: .solution}
{: .challenge}

Let's practice making our own *user-defined* functions in both the R and BASH languages. As a first step, we will make some functions with out arguments.

~~~
# definition of a function named my_function
my_function <- function() {
  print("hello")
  print("yellow")
}

# run the function by calling it by its name
my_function()
~~~
{: .language-r}

~~~
#!/bin/bash

# definition of a function named my_function
my_function () {
  echo "hello"
  echo "yellow"
}

# run the function by calling it by its name
my_function
~~~
{: .language-bash}

> ## Discussion
>
> What is the primary difference between the following definitions of **my_function** and **my_better_function**, and why is it important?
>
> ~~~
> # definition of a function named my_function,
> # which assigns values to two variables and adds them
> my_function <- function() {
> 	first_val <- 2
> 	second_val <- 4
> 	result <- first_val + second_val
> }
> 
> # run the function by calling it by its name
> my_function()
> 
> # function with an extra final line of code added to the function body
> my_better_function <- function() {
> 	first_val <- 2
> 	second_val <- 4
> 	result <- first_val + second_val
> 	result
> }
> 
> # run the function by calling it by its name
> my_better_function()
> ~~~
> {: .language-r}
{: .discussion}

Next, let's make some functions that require the input of arguments when they are run (callled).

> ## Tip!
>
> Note that you can use the **$(())** symbols as a shorthand way to perform [arithmetic expansion][mathBASH] in the BASH language, allows you to easily evaluate mathematical expressions. 
{: .callout}

~~~
# function to add two variables using arguments
my_add_function <- function(first_arg, second_arg) {
	first_val <- first_arg
	second_val <- second_arg
	result <- first_val + second_val
	result
}

# run the function by calling it by its name
# THIS WILL result IN AN ERROR
my_add_function()

# run the function by passing the function call the necessary arguments
my_add_function(2, 4)

# function to add two variables using default arguments
my_default_add_function <- function(first_arg = 100, second_arg = -100) {
	first_val <- first_arg
	second_val <- second_arg
	result <- first_val + second_val
	result
}

# run the function by calling it by its name
my_default_add_function()

# run the function by passing the function call the necessary arguments
my_default_add_function(2, 4)
~~~
{: .language-r}

~~~
#!/bin/bash

# function to add two variables using arguments
my_add_function () {
	first_val=$1
	second_val=$2
	result=$((first_val + second_val))
	echo $result
}

# run the function by calling it by its name
# THIS WILL result IN AN ERROR
my_add_function

# run the function by passing the function call the necessary arguments
my_add_function 2 4

# function to add two variables using default arguments
my_default_add_function () {
	first_val=${1:-100}
	second_val=${2:--100}
	result=$((first_val + second_val))
	echo $result
}

# run the function by calling it by its name
my_default_add_function

# run the function by passing the function call the necessary arguments
my_default_add_function 2 4
~~~
{: .language-bash}

Now let's try an interesting example that illustrates the differences between the [*scope* of variables][scopeVars] in the R and BASH environments.

~~~
var1 <- "A"
var2 <- "B"

my_function <- function() {
  var1 <- "C"
  var2  <- "D"
  cat("Inside my_function: var1:", var1, ", var2:", var2, "\n")
}

cat("Before running my_function: var1:", var1, ", var2:", var2, "\n")

my_function()

cat("After running my_function: var1:", var1, ", var2:", var2, "\n")
~~~
{: .language-r}

~~~
#!/bin/bash

var1='A'
var2='B'

my_function () {
  local var1='C'
  var2='D'
  echo "Inside my_function: var1: $var1, var2: $var2"
}

echo "Before running my_function: var1: $var1, var2: $var2"

my_function

echo "After running my_function: var1: $var1, var2: $var2"
~~~
{: .language-bash}

> ## Discussion
>
> Because specific combinations of words and symbols have different meanings (syntax), the formatting of a *user-defined* function in R typically has several common features. What are some of these formatting features?
> 
>> ## Solution
>> 
>> Some of the typical formatting features of a R function include:
>> - assignment operator **<-**
>> - **function** tag word
>> - parentheses
>> - curly braces
>> - commas between any arguments
>> - indentation of function body
> {: .solution}
>
> What about BASH *user-defined* function definition formatting?
> 
>> ## Solution
>> 
>> Some of the typical formatting features of a BASH function include:
>> - parentheses
>> - curly braces
>> - indentation of function body
> {: .solution}
>
> It is also important to note that how functions are called, and so the format of the commands is significantly different between the R and BASH languages. What are these differences?
>
>> ## Solution
>> 
>> The main differences between R and BASH commands are:
>> - parentheses
>> - argument delimiter (comma vs space)
> {: .solution}
{: .discussion}

> ## Coding Challenge
> 
> Now write and run your own *user-defined* R and BASH functions using scripts! Try using some of the other *built-in* functions we have learned about so far in the body of the function you create. 
> 
> Remember that in R the last line of the function body is what gets returned when the function is executed (run). Also, there are several formatting differences between R and BASH function defitions and calling (commands).
{: .challenge}


## How to Find and Fix Bugs

While writting code it is very common to encounter errors that prevent your code from running (executing) in the expected manner. These errors are often the result of bugs, or flaws in your code.

![How to Approach Debugging](../fig/debugging2.png){: width="500" }
*[Image source][codingProblems]*

The first step anytime you are trying to solve an error is to find the bug, which is the source of the error. To see an error in action, let's try to define a function that uses incompatible data types to perform a mathematical operation.

~~~
# definition of a funtion to add incompatible data type
my_function <- function() {
	first_val <- 2
	second_val <- "4"
	result <- first_val + second_val
	result
}

# run the function by calling it by its name
my_function()
~~~
{: .language-r}

This results in the following message to be output (returned) to the screen (console):

~~~
Error in first_val + second_val : non-numeric argument to binary operator
~~~
{: .error}

But from this message we cannot tell exactly which argument has the problem *non-numeric* value. Let's use the **print** function to find the exact source of the error.

~~~
# definition of a funtion to add incompatible data type
my_function <- function(first_arg, second_arg) {
	first_val <- first_arg
	second_val <- second_arg
	# added print statement to look at the value of each argument
	print(first_val)
	print(second_val)
	result <- first_val + second_val
	result
}

# run the function with an intentional error
my_function(2, "4")
~~~
{: .language-r}

So, it is important to take error meesages with a grain of salt. Instead of worrying or feeling overwhelemed when you recieve a bunch of incoherent error messages, tackle the problems one at a time and step-by-step. 

> ## Coding Challenge
>
> What is another function we can use to find the exact source of the error?
>
> **Hint:** Use the internet to search "r view data type", for example.
>
>> ## Solution
>>
>> ~~~
>> # definition of a funtion to add incompatible data type
>> my_function <- function(first_arg, second_arg) {
>>	first_val <- first_arg
>>	second_val <- second_arg
>>	# added print statement to look at the value of each argument
>>	typeof(first_val)
>>	typeof(second_val)
>>	result <- first_val + second_val
>>	result
>> }
>>
>> # run the function with an intentional error
>> my_function(2, "4")
>> ~~~
>> {: .language-r}
> {: .solution}
{: .challenge}

It is crucial to look for the first bug in your code when you are trying to find the source of an error. In general, you need to look for bugs starting at the top and work your way to the bottom of your code.

> ## Discussion
>
> Why is it so important to look for the earliest bug that appears in your code to fix first?
{: .discussion}



[interpreterComp]: https://www.geeksforgeeks.org/difference-between-assembler-and-interpreter/ 
[mathBASH]: https://www.shell-tips.com/bash/math-arithmetic-calculation/
[scopeVars]: https://linuxize.com/post/bash-functions/



{% include links.md %}
