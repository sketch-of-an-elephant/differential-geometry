# Build every solution PDF:   make
# Build a single one:         make solutions/ch03/3-28_handle.pdf
# Clean auxiliary files:      make clean
export TEXINPUTS := $(CURDIR)/tex//:$(TEXINPUTS)

SOURCES := $(shell find solutions -name '*.tex') tex/template.tex
PDFS    := $(SOURCES:.tex=.pdf)

all: $(PDFS)

%.pdf: %.tex tex/dgsolution.cls
	latexmk -pdf -interaction=nonstopmode -halt-on-error -cd $<

clean:
	latexmk -c -cd $(SOURCES) >/dev/null 2>&1 || true

distclean:
	latexmk -C -cd $(SOURCES) >/dev/null 2>&1 || true

.PHONY: all clean distclean
