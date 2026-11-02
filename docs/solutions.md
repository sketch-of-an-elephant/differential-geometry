---
layout: page
title: Solutions
permalink: /solutions/
---

PDFs are compiled automatically from the LaTeX sources in the repository.

{% assign pdfs = site.static_files | where_exp: "f", "f.path contains '/solutions/'" | where: "extname", ".pdf" %}
{% assign any = false %}
{% for c in site.data.chapters %}
{% assign nn = c.num | prepend: "0" | slice: -2, 2 %}
{% assign folder = "/solutions/ch" | append: nn | append: "/" %}
{% assign chpdfs = pdfs | where_exp: "f", "f.path contains folder" %}
{% if chpdfs.size > 0 %}{% assign any = true %}
### Chapter {{ c.num }}: {{ c.title }}
{% for f in chpdfs %}
{% assign parts = f.basename | split: "_" %}- [Exercise {{ parts[0] | replace: "-", "." }}]({{ f.path | relative_url }}){% if parts[1] %} — @{{ parts[1] }}{% endif %}{% endfor %}
{% endif %}
{% endfor %}
{% unless any %}_No solutions yet._{% endunless %}

The [solution template]({{ '/template.pdf' | relative_url }}) shows what a compiled solution looks like.
