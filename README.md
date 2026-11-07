# Differential Geometry Reading Group

We are reading **Jet Nestruev, _Smooth Manifolds and Observables_** (2nd ed.,
Springer GTM 220).

**Website:** https://sketch-of-an-elephant.github.io/differential-geometry/
(meeting info, schedule, chapter list and compiled solutions).

## Repository layout

```
docs/                     GitHub Pages site (Jekyll)
  _data/schedule.yml      meeting schedule  <- edit this
  _data/chapters.yml      chapter list of the book
  index.md                home page with meeting info and links
solutions/
  ch01/ ... ch21/         one folder per chapter
tex/
  template.tex            self-contained template for a new solution
notes/
  basic-definitions.tex   reference sheet of definitions from the book
Makefile                  local build helper
.github/workflows/        CI: compiles every solution and deploys the site
```

## Writing up a solution

1. Copy `tex/template.tex` (a single self-contained file) into the chapter
   folder, named
   `<exercise>_<your-name>.tex` with the dot in the exercise number
   replaced by a dash, e.g.

   ```
   solutions/ch03/3-28_aleksandras.tex
   ```

   Several people can solve the same exercise; your name keeps files apart.
   Use lowercase, with dashes instead of spaces (e.g. `ignas-j`).
2. Fill in `\chapter{..}{..}`, `\author{..}`, the `exercise` and `solution`
   environments. The preamble holds the shared notation (`\R`, `\F`, `\Spec`,
   `\Der`, `\Diff`, `\dual{F}`, ...); leave it as is and put any extra macros
   in the "your own macros" section. If a macro would be useful to everyone,
   add it to `tex/template.tex` instead.
3. Build it locally (optional), commit, and open a pull request (or push to
   `main` if you have access). CI compiles everything; once merged, the PDF
   appears on the [Solutions](https://sketch-of-an-elephant.github.io/differential-geometry/solutions/) page.

Don't commit PDFs, the CI builds them.

### Building locally

You need a TeX distribution with `latexmk` (TeX Live or MacTeX).

```sh
make                                     # build everything
make solutions/ch03/3-28_aleksandras.pdf   # build one file
make clean                               # remove aux files
```

Since every file is self-contained, you can also compile it directly with
`pdflatex`, in your editor or on Overleaf.

## Basic definitions

`notes/basic-definitions.tex` collects definitions from the book. Add a
`definition` environment under the right chapter section, citing the book
section with `\bk{..}`, e.g. `\begin{definition}[Geometrical algebra \bk{3.7}]`.
CI builds it and links the PDF from the home page.

## Updating the site

- **Schedule:** edit `docs/_data/schedule.yml`.
- **Meeting info (time, room, links):** edit `docs/index.md`.

Every push to `main` rebuilds and redeploys the site.

The book PDF is in `docs/assets/` and linked from the home page.
