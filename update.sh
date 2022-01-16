#!/bin/bash

pdflatex cv.tex

cd publicationList

f=publicationList
pdflatex -halt-on-error $f".tex" > log.pdflatex1 2>&1
bibtex $f".aux" > log.bibtex 2>&1
pdflatex -halt-on-error $f".tex" > log.pdflatex2 2>&1
pdflatex -halt-on-error $f".tex" > log.pdflatex3 2>&1
mv $f".pdf" ..
cd ..


