Michael van der Kolff's resume, typeset using [tidyres](https://github.com/futurelyf/tidyres).

### Build locally

Use LuaLaTeX or XeLaTeX, rather than pdfLaTeX:

```sh
latexmk -lualatex -interaction=nonstopmode -halt-on-error mvdk.tex
```

Install TeX Live with `texlive-luatex`, `texlive-latex-extra`, `texlive-fonts-extra`,
`fonts-texgyre`, and `latexmk` (Ubuntu package names). XeLaTeX is also supported.
The output is `mvdk.pdf`.

### Build using Docker

```sh
docker build -t latex .
docker run --rm -v "$PWD":/data latex
```

### License

The original resume was forked from https://github.com/sb2nov/resume (MIT).
All personal data is owned by Michael van der Kolff.

The unmodified `tidyres.sty` is vendored from Yifan Liang's tidyres v3.0.0,
upstream commit/blob `eada1cd9b8e86d99df6f05ad6c4e37ec717ac862` (blob SHA),
under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
Vendoring pins the v3 key-value interface independently of the installed TeX Live version.

