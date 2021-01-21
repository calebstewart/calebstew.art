.PHONY: resume all clean

all: docs/resume.tex resume

# Build resume.tex by running hugo
docs/resume.tex: assets/resume.tex
	hugo

resume: docs/resume.tex
	mkdir -p resume/build
	cd resume && xelatex -output-directory ./build ../$<
	mv resume/build/resume.pdf docs/resume.pdf

clean:
	rm -rf docs resume/build
	mkdir -p docs
	git checkout docs/CNAME
	git checkout docs/.nojekyll
