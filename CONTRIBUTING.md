## Contributing

We would love to have you contribute to this book! And, it is
fairly easy to do so.

### GitHub Account

In order to contribute directly, you will need a GitHub account.
You can get an account by simply clicking on the "Sign Up" button
at https://github.com

One you have an account, you will need to Sign in.

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
using the full power of git.

After submitting your pull request, someone will review your changes.

## Formatting tips

We use markdown for the book formatting.

Some useful links:

- Citations: https://rmarkdown.rstudio.com/authoring_bibliographies_and_citations.html

## Book Organization

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

## Building

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

# Contributing Guide

Welcome! We're pleased that you are thinking about contributing to this open
book on teaching and learning with Jupyter. This document outlines some
expectations that we have for contributors as well as guidance on how to make
a contribution.

We've tried to be thorough in this guide, but you may have questions or need
clarification. Please [file an issue on this GitHub repo](https://github.com/jupyter4edu/jupyter-edu-book/issues/new)
with your question. We'll do our best to respond in a timely manner. Thanks
in advance for your help improving the book.

## Community Expectations

This project has a [Code of Conduct](CODE-OF-CONDUCT.md) which all contributors should read and are
expected use when interacting with the community.

## Formatting tips

- Citations: https://rmarkdown.rstudio.com/authoring_bibliographies_and_citations.html
