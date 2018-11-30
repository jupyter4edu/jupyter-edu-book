gitbook : _book/index.html

view-gitbook : _book/index.html
	python3 -c 'import webbrowser; webbrowser.open("$^")'

pdf : _book/jupyter-edu-book.pdf

view-pdf : _book/jupyter-edu-book.pdf
	python3 -c 'import webbrowser; webbrowser.open("$^")'

SOURCES := $(wildcard [0-9]*.md [0-9]*.Rmd book.bib) _bookdown.yml

_book/index.html : $(SOURCES)
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"

_book/jupyter-edu-book.pdf : $(SOURCES)
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"

.PHONY: gitbook pdf view-gitbook view-pdf
