FROM ubuntu:24.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-luatex texlive-xetex texlive-latex-extra texlive-fonts-extra \
    fonts-texgyre latexmk \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
CMD ["latexmk", "-lualatex", "-interaction=nonstopmode", "-halt-on-error", "mvdk.tex"]
