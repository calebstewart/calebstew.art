# Website and Resume Builder

This repository serves dual purposes. Firstly, it serves as the source code for my website hosted
with GitHub Pages [here](https://calebstew.art). Secondly, it holds the source for my resume. My
resume is built using the [awesome-cv] repository with `LaTex`. However, I've constructed this
repo to simplify updating my website and my resume simultaneously. My resume is defined here in
simple markdown and YAML. This information is used to construct a `hugo` web version of my resume.
Further, the `resume.py` script will construct the needed `LaTex` source from these descriptions
in order to build a proper PDF resume suitable for distribution to potential employers. This makes
my job of editing and keeping everything up to date very easy and streamlines the process of editing
my resume.

You can use the provided `Makefile` to build both the static `hugo` site, and the PDF resume at the
same time. Both the HTML and PDF versions of my resume are hosted on the GitHub Pages site for
simplicities' sake.

```sh
# Build just the resume pdf
make resume
# Build just the hugo site (same as running `hugo`)
make hugo
# Build everything
make all
# Same as `all`
make
```
