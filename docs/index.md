---
layout: home
title: Home
---

We are reading **Jet Nestruev, _Smooth Manifolds and Observables_**
(2nd ed., Springer GTM 220), which develops differential geometry from the
algebra of observables $C^\infty(M)$ rather than from charts.

{% assign next = site.data.schedule | first %}
## Next meeting

{% if next %}**{{ next.date }}** — {{ next.chapters }}{% if next.presenter != "" %} (presenting: {{ next.presenter }}){% endif %}{% endif %}

## Where and how we meet

We meet weekly in the group room of the philosophy library,
Geschwister-Scholl-Platz 1, **room D321**. Check the [schedule]({{ '/schedule/' | relative_url }})
for the date and time of each meeting.

You get there by entering through the
[main entrance of the library](https://www.lmu.de/raumfinder/index.html#/building/bw0000/map?room=000901252A)
and then proceeding to the
[room on the top floor](https://www.lmu.de/raumfinder/index.html#/building/bw0000/map?room=000903471C).

Sessions are also held online in parallel:
[join the Google Meet](https://meet.google.com/aij-sppu-vvk).

There is a WhatsApp group for the reading group:
[invite link](https://chat.whatsapp.com/I7xwy1p49SJ148INdYq4v2).

{% assign org_pdf = site.static_files | where: "path", "/assets/org-info.pdf" | first %}
{% if org_pdf %}
[Organisational info (PDF)]({{ '/assets/org-info.pdf' | relative_url }})
{% endif %}

## Links

- [Schedule]({{ '/schedule/' | relative_url }})
- [Chapter list]({{ '/chapters/' | relative_url }})
- [Solutions]({{ '/solutions/' | relative_url }})

## Contributing solutions

Solutions are written in LaTeX using the group template and live in the
[GitHub repository](https://github.com/sketch-of-an-elephant/differential-geometry).
Every push to `main` rebuilds the PDFs and this site. See the repository
README for the step-by-step guide.
