PYTHON := /usr/bin/env python

html : _book/index.html

pdf : _book/jupyter-edu-book.pdf

epub : _book/jupyter-edu-book.epub

view-html : _book/index.html
	$(PYTHON) -c 'import webbrowser; webbrowser.open("$^")'

view-pdf : _book/jupyter-edu-book.pdf
	$(PYTHON) -c 'import webbrowser; webbrowser.open("$^")'

clean :
	$(RM) -r _book/*

SOURCES := $(wildcard [0-9]*.md [0-9]*.Rmd book.bib) _bookdown.yml index.Rmd

_book/index.html : $(SOURCES)
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"

_book/jupyter-edu-book.pdf : $(SOURCES) preamble.tex
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"

_book/jupyter-edu-book.epub : $(SOURCES)
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"

.PHONY: html pdf epub view-html view-pdf clean
