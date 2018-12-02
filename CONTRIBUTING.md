# Contributing Guide

:+1::tada: Welcome! :tada::+1:

We're pleased that you are thinking about contributing to this open
book on teaching and learning with Jupyter.
This document outlines some expectations that we have for contributors as well
as guidance on how to make a contribution.

We've tried to be thorough in this guide, but you may have questions or need
clarification. If you do, please [file an issue on this GitHub repo](https://github.com/jupyter4edu/jupyter-edu-book/issues/new)
with your question. We'll do our best to respond in a timely manner. Thanks
in advance for your help improving the book.

#### Table Of Contents

[Code of Conduct](#code-of-conduct)

[I don't want to read this whole thing, I just have a question.](#i-dont-want-to-read-this-whole-thing-i-just-have-a-question)

[How Can I Contribute?](#how-can-i-contribute)

- [Reporting Bugs](#reporting-bugs)
- [Suggesting Enhancements](#suggesting-enhancements)

[Your First Content Contribution](#your-first-content-contribution)

- [GitHub account](#github-account)
- [Edit content](#edit-content)
  - [From the book](#from-the-book)
  - [From the GitHub UI](#from-the-github-ui)
  - [Local development and building](#local-development-building)
- [Pull Requests](#pull-requests)
- [Recognition](#recognition)

[Styleguides](#styleguides)

- [Book organization](#book-organization)
- [Git Commit Messages](#git-commit-messages)
- [Formatting Tips](#formatting-tips)

## Code of Conduct

This project has a [Code of Conduct](CODE-OF-CONDUCT.md) which all contributors
should read and are expected to follow when interacting with the community.

## I don't want to read this whole thing I just have a question

> **Note:** Please check the following resources before asking a question. You'll
> likely get faster results by using the resources below.

Project Jupyter has an official Google Group for Jupyter in Education which
has several years of archives on many topics of using Jupyter for teaching.

- [Project Jupyter - Jupyter in Education Google Group](https://groups.google.com/forum/#!forum/jupyter-education)
- [Jupyter documentation resources](https://jupyter.org/documentation)

If you can't find an answer to your question about this book, please
[file an issue on this GitHub repo](https://github.com/jupyter4edu/jupyter-edu-book/issues/new).

## How Can I Contribute

### Reporting Bugs

This section guides you through submitting a bug report. Following these
guidelines helps maintainers and the community understand your report :pencil:,
reproduce the behavior :computer: :computer:, and find related reports :mag_right:.

Before creating bug reports, please do a cursory search of the issues
to see if the problem has already been reported. If it has
and the issue is still open, add a comment to the existing issue instead
of opening a new one.

When you are [creating a new bug report](https://github.com/jupyter4edu/jupyter-edu-book/issues/new),
please include as many details as possible.

### Suggesting Enhancements

This section guides you through submitting an enhancement suggestion for the
book, including completely new content and minor improvements to existing
content. Following these guidelines helps maintainers and the community
understand your suggestion :pencil: and find related suggestions :mag_right:.

If you are interested in making a major change or addition, it is good practice
to open an issue suggesting the enhancement before submitting a pull request.

## Your First Content Contribution

Are you ready to make your first content contribution? Great.

### GitHub Account

In order to contribute directly, you will need a GitHub account.
You can get an account by simply clicking on the "Sign Up" button
at https://github.com

Once you have an account, you will need to Sign in.

### Edit content

You will edit the content using one of the methods below:

- From the book
- From the GitHub user interface
- Local development and building

After making and commiting content changes, you will submit a
[pull request](#pull-requests).

#### From the book

At the top of each page in the book, there is a row of light gray icons.
The edit icon (the small box with a pencil inside) can be clicked to make
changes to the page. Clicking the edit button will open the
GitHub user interface for making an edit. You will now follow the
[From the GitHub user interface](#from-the-github-user-interface) section.

#### From the GitHub user interface

The easiest way to contribute is to go to the sources of the book:

https://github.com/jupyter4edu/jupyter-edu-book

and click on the pencil button. You can edit the page directly
in the browser. Just make the minimal about of change for your
edit. In other words, don't remove spaces, or other formatting
unless it is directly related to the item you would like to
change or add.

When completed editing a chapter, at the bottom of the page:

- provide a summary of the changes
- use the second box for more details about the changes
- click the "Commit changes" button
- click the "Create Pull Request" button

For more extensive changes, we recommend cloning this repository and
using the full power of git using [local development](#local-development).

#### Local development and building

The book content can be developed locally.

If you wish to build your own copy of the book in HTML format you'll need:

- R
  - `bookdown` package
- pandoc
  - pandoc-citeproc

On Ubuntu, you can install these with the following:

```shell
sudo apt install littler pandoc pandoc-citeproc
```

Followed by installing the `bookdown` package in R:

```shell
$ R
> install.packages("bookdown")
> q()
Save workspace image? [y/n/c]: y
```

If you wish to build your own copy of the book in PDF format you'll
need, in addition to the above, the following:

- LaTeX

On Ubuntu, you can install that with the following:

```shell
sudo apt install texlive-full
```

Now, to actually build the book, you can:

- `make html` - makes the HTML
- `make pdf` - makes the PDF
- `make view-html` - open the HTML in your browser
- `make view-pdf` - open the PDF in a viewer

The book PDF and HTML can be found in the `_book` folder.

### Pull Requests

The process described here has several goals:

- Maintain the book's quality
- Fix problems that are important to users
- Engage the community in working toward the best possible book
- Enable a sustainable system for the book's maintainers to review contributions

Please follow these steps to have your contribution considered by the maintainers:

1. Follow the [styleguides](#styleguides).
1. If you would like recognition in the book for your contribution, please follow the steps in the [recognition](#recognition) section.
1. After you submit your pull request, verify that all [status checks](https://help.github.com/articles/about-status-checks/) are passing.
1. Be patient. The maintainers are volunteers and will review at their
   earliest convenience.
1. After review, the maintainer may approve your pull request, make
   comments, or request changes.
1. Make any needed changes.
1. When the maintainer is satisfied by the changes, they will merge the pull request.
   In a few minutes, you should see the changes on the web version of the book.
1. Congratulate yourself on a job well done.

### Recognition

If you would like to be recognized as a contributor to the book, please edit the `contributors.md` and add your name in the file in alphabetical order by family name. Please submit this modified file in your pull request.

With each tagged release of the book in Zenodo, we will update the
list of contributors at the end of the book.

## Styleguides

### Book Organization

The book is divided into 10 chapters:

1. [index.Rmd](index.Rmd)
2. [02-why-jupyter.md](02-why-jupyter.md)
3. [03-notebooks-in-teaching-and-learning.md](03-notebooks-in-teaching-and-learning.md)
4. [04-a-catalogue-of-pedagogical-patterns.md](04-a-catalogue-of-pedagogical-patterns.md)
5. [05-jupyter-ecosystem.md](05-jupyter-ecosystem.md)
6. [06-getting-your-class-going-with-jupyter.md](06-getting-your-class-going-with-jupyter.md)
7. [07-usage-case-studies.md](07-usage-case-studies.md)
8. [08-about-the-authors.md](08-about-the-authors.md)
9. [09-glossary.md](09-glossary.md)

Please feel free to add to or edit these sections.

### Git Commit Messages

- Use the present tense ("Add feature" not "Added feature")
- Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
- Limit the first line to 72 characters or less
- Reference issues and pull requests liberally after the first line

### Formatting tips

We use markdown for the book formatting.

- Citations: https://rmarkdown.rstudio.com/authoring_bibliographies_and_citations.html
