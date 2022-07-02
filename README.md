Forked from https://github.com/sb2nov/resume. This is Michael van der Kolff's resume.

### Build using Docker

```sh
docker build -t latex .
docker run --rm -i -v "$PWD":/data latex pdflatex mvdk.tex
```

### License

Format is MIT but all the data is owned by Michael van der Kolff.
