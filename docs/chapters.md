---
layout: page
title: Chapters
permalink: /chapters/
---

{% assign repo = "https://github.com/sketch-of-an-elephant/differential-geometry" %}
{% assign pdfs = site.static_files | where_exp: "f", "f.path contains '/solutions/'" | where: "extname", ".pdf" %}

Chapter 2 is skipped on a first reading (as the book suggests) and revisited when needed.

| # | Chapter | Page | Solutions |
|---|---------|------|-----------|
{% for c in site.data.chapters %}{% assign nn = c.num | prepend: "0" | slice: -2, 2 %}{% assign folder = "/solutions/ch" | append: nn | append: "/" %}{% assign chpdfs = pdfs | where_exp: "f", "f.path contains folder" %}| {{ c.num }} | {{ c.title }} | {{ c.page }} | {% if chpdfs.size > 0 %}[{{ chpdfs.size }} PDF{% if chpdfs.size > 1 %}s{% endif %}]({{ '/solutions/' | relative_url }}#ch{{ nn }}){% else %}none yet{% endif %} · [sources]({{ repo }}/tree/main/solutions/ch{{ nn }}) |
{% endfor %}
