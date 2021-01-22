# Website and Resume Builder

This repository serves dual purposes. Firstly, it serves as the source code for my website hosted
with GitHub Pages [here](https://calebstew.art). Secondly, it holds the source for my resume. My
resume is built using the [awesome-cv] repository with `LaTex`. However, I've constructed this
repo to simplify updating my website and my resume simultaneously. My resume is defined here in
simple markdown and YAML. 

## Building the Site and Resume

Due to the way that GitHub Pages works, I have to host the source and built versions of the website
in this repository (I could have used a branch, but this is easier to maintain). Hugo is used to
build the static website as well as the `LaTex` source code for the resume. After building the site,
we use `xelatex` to build a PDF version of the resume.

```sh
# build just the site
hugo
# build the site and rebuild the resume
make
# technically ends up being the same currently, because the resume depends on the site.
make resume
```

The `LaTex` is generated in `docs/resume.tex` and the `Makefile` will put the published PDF in `docs/resume.pdf`.
Both of these files are linked to by the `/resume/` route (`content/resume/_index.md` and `layouts/resume/list.html`).
