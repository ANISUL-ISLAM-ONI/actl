# ACTL - Algorithm Competition Template Library

This repo hosts ACTL, ICPC team reference document.
It consists of <= 25 pages of copy-pasteable code snipets and references, for use in ICPC-style programming competitions.

See [actl.pdf](./actl.pdf) for the final, browsable version, and [content/](./content/) for raw source code.

## Customizing KACTL

While ACTL is usable as is, it's also easy to modify if you want to create a personalized copy.
In particular, you may want to change the cover page, or make your own choice of algorithms to include -- due to space concerns, not all algorithms in the repo are included in the pdf.
You may also want to enable colored syntax highlighting.

`content/actl.tex` is the main file of ACTL, and can be edited to change team name, logo, syntax highlighting, etc.
It imports `chapter.tex` files from each of the `content/` subdirectories, which define the contents of each chapter.
These include source code, text and math in the form of LaTeX.

To build KACTL, type `make actl` (or `make fast`) on a \*nix machine -- this will update `actl.pdf`.
But before proceed to run the above command make sure your linux system has texlive otherwise you can run this command (in debian based linux distro):

```sh
sudo apt-get install texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra
```

(Windows might work as well, but is not tested.)

## License

As usual for competitive programming, the licensing situation is a bit unclear.
Many source files are marked with license (we try to go with
[CC0](https://creativecommons.org/share-your-work/public-domain/cc0/)), but many also aren't.
Presumably good will is to be assumed from other authors, though, and in many cases permission should not be needed since the code is not distributed.
To help trace things back, sources and authors are noted in source files.
Credits : [KTH-KACTL](https://github.com/kth-competitive-programming/kactl)
