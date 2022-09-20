# Docker container for Pandoc

[Pandoc](https://pandoc.org/MANUAL.html) is a  a universal document converter. It can be used to convert from one markup or mark down document format to another.  In my case I want to convert from [MarkDown](https://pandoc.org/MANUAL.html#pandocs-markdown) to PDF.   There are standard [pandoc docker containers](https://github.com/pandoc/dockerfiles).  I am creating this one so that I can include the plugins I want.

This container assumes you will mount a volume named `/data` that will contain one or more markdown files to be converted.  It also assumes a volume name `/template` with a `header.md` and `footer.md` that it will prepend and append to any markdown in /data.

The header is where you can set pandoc settings.  You can see an example of this in the folder [/template](./template/) which will be the default templates in this container unless you override them with a volume mount.




