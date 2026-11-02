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
  dgsolution.cls          shared LaTeX class (environments + notation)
  template.tex            template for a new solution
Makefile, latexmkrc       local build helpers
.github/workflows/        CI: compiles every solution and deploys the site
```

## Writing up a solution

1. Copy `tex/template.tex` into the chapter folder (or download
   [solution-template.zip](https://sketch-of-an-elephant.github.io/differential-geometry/solution-template.zip),
   which also contains `dgsolution.cls`), named
   `<exercise>_<your-name>.tex` with the dot in the exercise number
   replaced by a dash, e.g.

   ```
   solutions/ch03/3-28_aleksandras.tex
   ```

   Several people can solve the same exercise; your name keeps files apart.
   Use lowercase, with dashes instead of spaces (e.g. `ignas-j`).
2. Fill in `\chapter{..}{..}`, `\author{..}`, the `exercise` and `solution`
   environments. Shared notation (`\R`, `\F`, `\Spec`, `\Der`, `\Diff`,
   `\dual{F}`, ...) lives in `tex/dgsolution.cls`; add new macros there
   rather than in your own file so everyone uses the same notation.
3. Build it locally (optional), commit, and open a pull request (or push to
   `main` if you have access). CI compiles everything; once merged, the PDF
   appears on the [Solutions](https://sketch-of-an-elephant.github.io/differential-geometry/solutions/) page.

Don't commit PDFs, the CI builds them.

### Building locally

You need a TeX distribution with `latexmk` (TeX Live or MacTeX).

```sh
make                                              # build everything
make solutions/ch03/3-28_sketch-of-an-elephant.pdf  # build one file
make clean                                        # remove aux files
```

Running `latexmk` from the repository root also works (the `latexmkrc` adds
`tex/` to the search path). If you compile from inside a chapter folder or in
an editor, make sure `tex/` is on `TEXINPUTS`, e.g.
`export TEXINPUTS=/path/to/repo/tex//:`.

## Updating the site

- **Schedule:** edit `docs/_data/schedule.yml`.
- **Meeting info (time, room, links):** edit `docs/index.md`.

Every push to `main` rebuilds and redeploys the site.

The book PDF is in `docs/assets/` and linked from the home page.
