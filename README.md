# Ph1Mech cheat sheet

why are we still here?

just to suffer?

## Install

```bash
 wget https://github.com/typst/typst/releases/download/v0.13.1/typst-x86_64-unknown-linux-musl.tar.xz
 tar -xvf typst-x86_64-unknown-linux-musl.tar.xz
 sudo cp typst-x86_64-unknown-linux-musl/typst /usr/local/bin
 ```

now you'r ready.

## commands

```bash
typst compile main.typ main.pdf # for single build

typst watch main.typ out/phai.pdf #for live compiling the pdf while writing
```

## Tips Tricks

Linebreak
#colbreak()

### Credits
[@glv12](https://github.com/glv12) : Providing a good template
