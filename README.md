# Pandoc Docker container

[Pandoc](https://pandoc.org/MANUAL.html) is a universal document converter. It can be used to convert from one markup or mark down document format to another.  In my case I want to convert from [MarkDown](https://pandoc.org/MANUAL.html#pandocs-markdown) to PDF.   There are standard [pandoc docker containers](https://github.com/pandoc/dockerfiles).  I am creating this one so that I can include the plugins I want.

## Running

```shell
docker run --rm -ti --volume $PWD/data:/data --volume $PWD/template:/template cbitter78/pandoc:latest
```

## Assumptions

This container assumes you will mount a volume named `/data` that will contain one or more markdown files to be converted.  It also assumes a volume name `/template` with a `header.md` and `footer.md` that it will prepend and append to any markdown in /data.  The [header.md](./template/header.md) contains a [yaml metadata block](https://www.uv.es/wikibase/doc/cas/pandoc_manual_2.7.3.wiki?98) that is used to configure pandoc. 

The header is where you can set pandoc settings.  You can see an example of this in the folder [/template](./template/) which will be the default templates in this container unless you override them with a volume mount.

The container will iterate over all the files in /data and make a PDF for each that will have the header and footer.   

## Running without assumptions

If you want to just use pandoc any from a prompt override the entrypoint with `--entrypoint /bin/bash` like this

```shell
docker run --rm -ti --entrypoint /bin/bash --volume $PWD/data:/data --volume $PWD/template:/template cbitter78/pandoc:latest
```