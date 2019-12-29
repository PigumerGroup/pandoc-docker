使い方
======

```sh
$ docker build -t pandoc .
$ docker run -it -v $(pwd):/work --rm pandoc
# cd /work
# pandoc -f gfm README.md \
    -t html5 -s -o tmp/README.pdf --metadata pagetitle=README
# pandoc -f gfm README.md \
    -t html5 -s -o tmp/README.html --metadata pagetitle=README
```
