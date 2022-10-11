# Because I always forget https://docs.docker.com/engine/reference/builder

FROM ubuntu
LABEL maintainer='Charles Bitter <cbitter78+github@gmail.com>'
LABEL org.opencontainers.image.source=https://github.com/cbitter78/docker_pandoc
LABEL org.opencontainers.image.description="Pandoc Docker container to convert from markdown to pdf"
LABEL org.opencontainers.image.licenses=MIT
LABEL org.opencontainers.image.version="1.0.0"

RUN apt-get -q update && DEBIAN_FRONTEND=noninteractive \
    apt-get install --assume-yes \
        pandoc texlive-latex-base texlive-fonts-recommended \
        texlive-extra-utils texlive-latex-extra \
        && rm -rf /var/lib/apt/lists/*
COPY template /template
COPY data /data
WORKDIR /data

COPY ./pandoc.sh /
ENTRYPOINT ["/pandoc.sh"]