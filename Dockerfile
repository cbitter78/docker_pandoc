FROM ubuntu
LABEL maintainer='Charles Bitter <cbitter78+github@gmail.com>'

RUN apt-get -q update && DEBIAN_FRONTEND=noninteractive \
    apt-get install --assume-yes \
        pandoc texlive-latex-base texlive-fonts-recommended \
        texlive-extra-utils texlive-latex-extra \
        && rm -rf /var/lib/apt/lists/*

WORKDIR /data

CMD pandoc -s -t markdown -w pdf -o recommendation.pdf /template/header.md *.md /template/footer.md