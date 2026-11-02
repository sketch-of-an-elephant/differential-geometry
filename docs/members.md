---
layout: page
title: Members
permalink: /members/
---

| Name | GitHub | Role |
|------|--------|------|
{% for p in site.data.members %}| {{ p.name }} | [@{{ p.github }}](https://github.com/{{ p.github }}) | {{ p.role }} |
{% endfor %}

_To join, add yourself to `docs/_data/members.yml`._
