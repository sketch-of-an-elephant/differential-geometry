---
layout: home
title: Home
---

We are reading **Jet Nestruev, _Smooth Manifolds and Observables_**
(2nd ed., Springer GTM 220, 2020), which builds differential geometry from
the algebra of smooth functions on a manifold (the "observables") rather
than from charts and atlases.

**The book:** [download the PDF]({{ '/assets/nestruev-smooth-manifolds-and-observables.pdf' | relative_url }})
· [SpringerLink page](https://link.springer.com/978-3-030-45652-8)

{% assign next = site.data.schedule | first %}
## Next meeting

{% if next %}**{{ next.date }}** — {{ next.chapters }}{% if next.presenter != "" %} (presenting: {{ next.presenter }}){% endif %}{% endif %}

## When we meet

The first meeting is on **Friday 6 November at 18:00** (Munich time).
The regular weekly slot isn't fixed yet, so please add your availability to the
[scheduling poll](https://timeful.app/e/BSznn8).

## Where we meet

We meet in the group room of the philosophy library in the LMU main building,
Geschwister-Scholl-Platz 1, **room D321**.

You get there by entering through the
[main entrance of the library](https://www.lmu.de/raumfinder/index.html#/building/bw0000/map?room=000901252A)
and then proceeding to the
[room on the top floor](https://www.lmu.de/raumfinder/index.html#/building/bw0000/map?room=000903471C).

Sessions are also held online in parallel for anyone not in Munich:
[join the Google Meet](https://meet.google.com/aij-sppu-vvk).

There is a WhatsApp group for the reading group:
[invite link](https://chat.whatsapp.com/I7xwy1p49SJ148INdYq4v2).

## How we read

Each week everyone reads the agreed section on their own, and at the
meeting we discuss it and work through the exercises together. We can
adjust the format as we go.

We start with Chapter 1 (Introduction), which has some nice problems.
Chapter 2 is mostly technical groundwork (cutoff functions, partitions of
unity) and the book says it can be skipped on a first reading, so we skip it
for now and come back to it when needed. Chapters 3 and 4 are where the
algebraic approach really starts.

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
