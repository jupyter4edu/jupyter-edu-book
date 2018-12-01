PYTHON := /usr/bin/env python

html : _book/index.html

pdf : _book/jupyter-edu-book.pdf

view-html : _book/index.html
	$(PYTHON) -c 'import webbrowser; webbrowser.open("$^")'

view-pdf : _book/jupyter-edu-book.pdf
	$(PYTHON) -c 'import webbrowser; webbrowser.open("$^")'

clean :
	$(RM) -r _book/*

SOURCES := $(wildcard [0-9]*.md [0-9]*.Rmd book.bib) _bookdown.yml

_book/index.html : $(SOURCES)
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"

_book/jupyter-edu-book.pdf : $(SOURCES)
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"

.PHONY: html pdf view-html view-pdf clean
