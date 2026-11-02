---
layout: page
title: Schedule
permalink: /schedule/
---

| Date | Chapters | Presenter | Notes |
|------|----------|-----------|-------|
{% for m in site.data.schedule %}| {{ m.date }} | {{ m.chapters }} | {{ m.presenter }} | {{ m.notes }} |
{% endfor %}

_To change the schedule, edit `docs/_data/schedule.yml`._
