---
layout: home
title: Home
---

We are reading **A. M. Vinogradov / Jet Nestruev, _Smooth Manifolds and Observables_**
(2nd ed., Springer GTM 220), which develops differential geometry from the
algebra of observables $C^\infty(M)$ rather than from charts.

{% assign org_pdf = site.static_files | where: "path", "/assets/org-info.pdf" | first %}
{% if org_pdf %}
## Organisational info

[**Download the organisational info (PDF)**]({{ '/assets/org-info.pdf' | relative_url }})

<object data="{{ '/assets/org-info.pdf' | relative_url }}" type="application/pdf" width="100%" height="800px">
  <p>Your browser can't display the PDF inline — use the download link above.</p>
</object>
{% else %}
## Organisational info

_The organisational info PDF will appear here once it is uploaded to
`docs/assets/org-info.pdf`._
{% endif %}

{% assign next = site.data.schedule | first %}
## Next meeting

{% if next %}**{{ next.date }}** — {{ next.chapters }}{% if next.presenter != "" %} (presenting: {{ next.presenter }}){% endif %}{% endif %}

See the full [schedule]({{ '/schedule/' | relative_url }}),
the [chapter list]({{ '/chapters/' | relative_url }}),
and everyone's [solutions]({{ '/solutions/' | relative_url }}).

## Contributing solutions

Solutions are written in LaTeX using the group template and live in the
[GitHub repository]({{ site.github.repository_url | default: "https://github.com/sketch-of-an-elephant/differential-geometry" }}).
Every push to `main` rebuilds the PDFs and this site. See the repository
README for the step-by-step guide.
