---
layout: page
title: Chapters
permalink: /chapters/
---

Chapter 2 is skipped on a first reading (as the book suggests) and revisited when needed.

| # | Chapter | Page | Solutions folder |
|---|---------|------|------------------|
{% for c in site.data.chapters %}{% assign nn = c.num | prepend: "0" | slice: -2, 2 %}| {{ c.num }} | {{ c.title }} | {{ c.page }} | `solutions/ch{{ nn }}/` |
{% endfor %}
