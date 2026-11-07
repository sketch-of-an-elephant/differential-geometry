---
layout: page
title: Book notes
permalink: /notes/
---

{% assign repo = "https://github.com/sketch-of-an-elephant/differential-geometry" %}

**[Download the annotated book (PDF)]({{ '/annotated-book.pdf' | relative_url }})**

The annotated book is the Nestruev PDF with the group's notes typeset in
LaTeX in a margin next to the page they belong to. Pages without notes are
unchanged. Notes that don't fit in the margin continue on an extra page
inserted right after the book page. The PDF is rebuilt automatically every
time a note is merged.

## Adding a note

1. **Open the chapter's notes file**, `annotations/chNN.tex`
   ([folder on GitHub]({{ repo }}/tree/main/annotations)), e.g.
   `annotations/ch03.tex` for Chapter 3. If the file doesn't exist yet,
   create it. One file per chapter keeps edits from colliding.
2. **Add a line** for each note:

   ```latex
   \bookNote{37}{Here $\dual{\F}$ is the set of all $\R$-points of $\F$.}

   \bookNote[Aleksandras]{38}{A longer remark, with display math
     \[ \Spec_\R \F = \dual{\F}, \]
     lists, links and anything else LaTeX can do.}
   ```

   - The number is the page number **printed in the book** (Chapter 1
     starts on page 1), not the page number your PDF viewer shows, which
     is 16 higher.
   - The optional `[Name]` is shown above the note.
   - Several notes on the same page are stacked in the order they appear.
   - All the shared notation from the solution template (`\R`, `\F`,
     `\Spec`, `\Der`, `\Diff`, `\dual{F}`, ...) is available.
   - For a commutative diagram, write
     `\begin{tikzcd}[ampersand replacement=\&]` and use `\&` instead of
     `&` between cells.
3. **Commit it** the same way as a solution: in the browser via
   **Edit** (pencil icon) → **Commit changes** → *Create a new branch and
   start a pull request*, or with git. The pull request check compiles the
   annotated book, so a LaTeX error shows up there before merging.

## Compiling locally while you write

You don't have to: the pull request check builds the annotated book for
you. But a local build lets you see your notes before committing, and takes
only a few seconds.

1. **Install TeX with `latexmk`** (once):
   - *macOS:* [MacTeX](https://www.tug.org/mactex/).
   - *Linux:* TeX Live, e.g. on Ubuntu/Debian
     `sudo apt install latexmk texlive-latex-extra texlive-science texlive-fonts-recommended`.
   - *Windows:* [MiKTeX](https://miktex.org/) or [TeX Live](https://tug.org/texlive/).
     `latexmk` also needs Perl ([Strawberry Perl](https://strawberryperl.com/)).
2. **Get the repository** (once): `git clone {{ repo }}.git`. The build
   needs the book PDF, which is in the repository at
   `docs/assets/`, so there is nothing else to download.
3. **Build**, from the top folder of the repository:

   ```sh
   make annotations/annotated-book.pdf
   ```

   and open `annotations/annotated-book.pdf`. Run the same command again
   after each change. Without `make` (e.g. on Windows), run instead

   ```sh
   cd annotations
   latexmk -pdf annotated-book.tex
   ```

4. **Live preview (optional):** inside `annotations/`, run

   ```sh
   latexmk -pdf -pvc annotated-book.tex
   ```

   It opens the PDF and recompiles every time you save a notes file. Stop
   it with Ctrl+C.

If you compile from an editor (TeXShop, TeXstudio, VS Code with LaTeX
Workshop, ...), compile `annotations/annotated-book.tex`, not your
`chNN.tex` file: the chapter files are only lists of notes and don't
compile on their own. The book is found by a relative path, so the
compilation must run inside the `annotations/` folder, which editors do by
default.

A LaTeX error in a note stops the build and the log names the line. Check
braces first: every `\bookNote{page}{...}` must close its second brace.
Delete the build leftovers with `make clean`.
