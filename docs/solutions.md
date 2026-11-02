---
layout: page
title: Solutions
permalink: /solutions/
---

{% assign repo = "https://github.com/sketch-of-an-elephant/differential-geometry" %}
{% assign pdfs = site.static_files | where_exp: "f", "f.path contains '/solutions/'" | where: "extname", ".pdf" %}

## Submitting a solution

1. **Get the template.** Download [`template.tex`]({{ repo }}/blob/main/tex/template.tex)
   ([raw file]({{ repo }}/raw/main/tex/template.tex), [compiled example]({{ '/template.pdf' | relative_url }})).
   It uses the shared class [`dgsolution.cls`]({{ repo }}/blob/main/tex/dgsolution.cls),
   which defines the `exercise` and `solution` environments and common notation
   (`\R`, `\F`, `\Spec`, `\Der`, `\Diff`, ...).
2. **Name it** `<exercise>_<github-handle>.tex` with the dot replaced by a dash,
   and put it in the chapter's folder, e.g. `solutions/ch03/3-28_sketch-of-an-elephant.tex`.
3. **Fill it in.** Set `\chapter{3}{Algebras and Points}` and `\author{...}`,
   restate the exercise and write your solution. Only commit the `.tex`
   (and any images it needs), not the PDF.
4. **Commit it.** Either way works:
   - *In the browser:* open the [chapter folder on GitHub]({{ repo }}/tree/main/solutions),
     click **Add file → Upload files** (or **Create new file**), and choose
     **Create a new branch and start a pull request**.
   - *With git:*
     ```sh
     git clone {{ repo }}.git && cd differential-geometry
     git switch -c ch03-3-28
     cp tex/template.tex solutions/ch03/3-28_your-handle.tex   # then edit it
     make solutions/ch03/3-28_your-handle.pdf                   # optional local build
     git add solutions/ch03/3-28_your-handle.tex
     git commit -m "Ch. 3: solution to 3.28"
     git push -u origin ch03-3-28                                # then open a pull request
     ```
5. **Check the build.** The pull request runs a check that compiles every
   solution. When it's green and merged, the PDF shows up below within a
   couple of minutes.

If you don't have write access yet, ask in the WhatsApp group (or fork the
repository and open the pull request from your fork).

## Solutions by chapter

{% assign any = false %}
{% for c in site.data.chapters %}
{% assign nn = c.num | prepend: "0" | slice: -2, 2 %}
{% assign folder = "/solutions/ch" | append: nn | append: "/" %}
{% assign chpdfs = pdfs | where_exp: "f", "f.path contains folder" %}
{% if chpdfs.size > 0 %}{% assign any = true %}
<h3 id="ch{{ nn }}">Chapter {{ c.num }}: {{ c.title }}</h3>
{% for f in chpdfs %}
{% assign parts = f.basename | split: "_" %}- [Exercise {{ parts[0] | replace: "-", "." }}]({{ f.path | relative_url }}){% if parts[1] %} — @{{ parts[1] }}{% endif %}{% endfor %}
{% endif %}
{% endfor %}
{% unless any %}_No solutions yet._{% endunless %}
