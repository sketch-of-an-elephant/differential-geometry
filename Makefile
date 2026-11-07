# Build every PDF:            make
# Build a single one:         make solutions/ch03/3-28_aleksandras.pdf
# Build the annotated book:   make annotations/annotated-book.pdf
# Clean auxiliary files:      make clean
SOURCES := $(shell find solutions -name '*.tex') tex/template.tex notes/basic-definitions.tex \
           annotations/annotated-book.tex
PDFS    := $(SOURCES:.tex=.pdf)

all: $(PDFS)

# The annotated book is rebuilt whenever a chapter's notes change.
annotations/annotated-book.pdf: $(wildcard annotations/ch*.tex) \
                                docs/assets/nestruev-smooth-manifolds-and-observables.pdf

%.pdf: %.tex
	latexmk -pdf -interaction=nonstopmode -halt-on-error -cd $<

clean:
	latexmk -c -cd $(SOURCES) >/dev/null 2>&1 || true

distclean:
	latexmk -C -cd $(SOURCES) >/dev/null 2>&1 || true

.PHONY: all clean distclean
