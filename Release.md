# Release

A new docker image will be published by [actions](./.github/workflows/build.yml) to [cbitter78/pandoc](https://hub.docker.com/repository/docker/cbitter78/pandoc).

### Tagging

A small note to self on my tagging procedure.

```shell
TAG=v0.0.3
git pull
git checkout main
git tag -a $TAG HEAD -m "Creating Tag $TAG for Release"
git push --tags
```