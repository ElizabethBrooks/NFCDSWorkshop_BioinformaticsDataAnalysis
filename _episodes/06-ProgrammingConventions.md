---
title: "Programming Language Conventions"
teaching: 10
exercises: 10
questions:
- "Why is it important to leave notes in my code about what it does?"
objectives:
- "Review the syntax and common functions of R and BASH."
- "Be able to write helpful and simple comments and documents for programs."
keypoints:
- "Always include informative documents for your programs."
---

## Programming Language Conventions 

There is a set of guildlines for every programming language that informs how code should be formatted and the meaning behind specific combinations of words and symbols. Recall that the exact details of the formatting conventions your need to follow depends on the programming language in which you are writting your code.

> ## Discussion
>
> Which is better to use when there are multiple words in a variable name?
> - underscores (e.g., my_value)
> - capatalization (e.g., myValue)
{: .discussion}

### Naming Conventions

As we know, consistent file naming is important for properly managing your data. Using common [naming conventions][nameConventions] is also a good way to improve the readability of your code. This is important since it enables yourself and others to more readily understand the purpose of your code. 

![File Naming Conventions](../fig/laureperrier_filenaming.png){: width="500" }
*[Image source][fileConventions]*

> ## Checklist
>
> One of the best practices of programming is to consistently follow a convention when naming files, variables, functions, and anything else.
>
> Some common file naming conventions:
> - File names should be meaningful and end in an appropriate extension
> - If files need to be run in sequence, prefix them with numbers
>
> Some common R variable naming conventions:
> - Variable and function names should be lowercase
> - Use an underscore or capatalization (camel case) to separate words within a name
> - Generally, variable names should be nouns and function names should be verbs
> - Strive for names that are concise and meaningful
> - Where possible, avoid using names of existing functions and variables
>
> And some common BASH variable naming conventions:
> - 
{: .checklist}

### Formatting Conventions

We now know that specific combinations of words and symbols have differfent meanings depending on the programming language. But did you also know that the formatting of the words and symbols is important as well?

> ## Checklist
>
> The syntax of the R programming language has several components:
> **Spacing**
> - Place spaces around all infix operators (e.g., =, +, -, <-)
> - Place spaces around = in function calls
> - Always put a space after a comma, and never before. Exceptions to this rule: :, :: and ::: don’t need spaces around them
> - Place a space before left parentheses, except in a function call
> - More than one space in a row is ok if it improves alignment of equal signs or assignments (<-)
> - Do not place spaces around code in parentheses or square brackets, unless there is a comma
>
> **Curly Braces**
> - An opening curly brace should never go on its own line and should always be followed by a new line
> - A closing curly brace should always go on its own line, unless it is followed by an **else**
> - Always indent the code inside curly braces
> - It is ok to leave very short statements on the same line
>
> **Line Length**
> - Strive to limit your code to 80 characters per line, which fits comfortably on a printed page with a reasonably sized font
> - If you find yourself running out of room, you should try to encapsulate and subdivide some of the work in a separate function
>
> **Indentation**
> - When indenting your code, use two spaces
> - Never use tabs or mix tabs and spaces, unless a function definition runs over multiple lines. In that case, indent the second line to where the definition starts
> 
> **Assignment**
> - Use <-, not =, for assignment
{: .checklist}

### Commenting & Helpful Services

Small [meaningful comments][meaningfulComments] throughout your code can be a great way to leave yourself and others helpful notes about the purpose of your code. This is particularly important when approaching a new coding challenge, or when you need to take break. It is also helpful to leave frequent comments for code in programming languages you do not freuqently write in.

![Tips for Creating Meaningful Comments](../fig/meaningfulComments.png){: width="500" }
*[Image source][meaningfulComments]*

> ## Checklist
>
> A general rule of thumb when coding is to have comments at least every 5 lines. Some other tips to keep in mind include when coding in R:
> - Preferably write code while you are coding, and not after
> - Each line of a comment should begin with the comment symbol **#** and a single space
> - Comments should explain the why and not the what, unless helpful for your future self
> - Use commented lines of multiple - and = to break up your file into easily readable chunks
{: .checklist}

Creating comments for your code is most useful when you are describing *why* it does what it does. This gives your code context, which gives other developers (or your future self) more insights into the design decisions behind a piece of code.

Looking at the documentation is one of the best ways to find out or recall exactly *what* a piece of code is doing. Another great way to learn the meaning of different pieces of code is through a community website where people can ask coding questions using specific examples (e.g., [StackOverflow][SO], and [Biostars][BS]). There are also many, many wonderful websites and blogs with posts covering nearly any topic of which you could think (e.g., [codecademy][codecademy], [tutorials point][TP][R-bloggers][RB], [R Weekly][RW], and my own site [Myscape][Myscape]).

### A Note on Documentation

Writing comprehensive documentation about your code is a great way to convey important information about your software program. and give your code further context. A common form of documentation is a [**README**][docStrats] file in the directory of your code. This document is a description of the what, why, and how of the project for which the code was written.

![README Documentation Practices](../fig/Readme_book_signifying_code_documentation.png){: width="500" }
*[Image source][readmeDocs]*

> ## Checklist
> To help motivate writting documentation for your code, here are some questions you can ask yourself.
> - What was your motivation?
> - Why did you build this project?
> - What problem does it solve?
> - What did you learn?
> - What makes your project stand out?
{: .checklist}

[nameConventions]: http://adv-r.had.co.nz/Style.html
[fileConventions]: https://biblio.uottawa.ca/en/services/faculty/research-data-management/file-naming-and-organization-data
[meaningfulComments]: https://www.stepsize.com/blog/the-engineers-guide-to-writing-code-comments
[codecademy]: https://www.codecademy.com/catalog/language/r?g_network=g&g_device=c&g_adid=494035656878&g_keyword=&g_acctid=243-039-7011&g_adtype=search&g_adgroupid=122166635692&g_keywordid=dsa-1147291854134&g_campaignid=12144922488&g_campaign=US+DSA+-+Catalog&utm_id=t_dsa-1147291854134:ag_122166635692:cp_12144922488:n_g:d_c&utm_term=&utm_campaign=US%20DSA%3A%20Catalog&utm_source=google&utm_medium=paid-search&utm_content=494035656878&hsa_acc=2430397011&hsa_cam=12144922488&hsa_grp=122166635692&hsa_ad=494035656878&hsa_src=g&hsa_tgt=dsa-1147291854134&hsa_kw=&hsa_mt=&hsa_net=adwords&hsa_ver=3&gclid=Cj0KCQiAxoiQBhCRARIsAPsvo-w6GRi0Zpoyejk9YrXjYxjAD_FUNVF9WQ21g5HTA7pNGY72U7ng7B8aAtjoEALw_wcB
[TP]: https://www.tutorialspoint.com/r/index.htm
[SO]: https://stackoverflow.com/
[BS]: https://www.biostars.org/
[RB]: https://www.r-bloggers.com/
[RW]: https://rweekly.org/
[Myscape]: https://morphoscape.wordpress.com/category/tech/
[readmeDocs]: https://blog.submain.com/code-documentation-the-complete-beginners-guide/
[docStrats]: https://www.freecodecamp.org/news/how-to-write-a-good-readme-file/

{% include links.md %}
