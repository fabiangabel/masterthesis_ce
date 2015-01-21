#!/bin/bash
latex masterthesis.tex
bibtex masterthesis.aux
sed -i 's/, and/ and/g' masterthesis.bbl
makeindex masterthesis.nlo -s nomencl.ist -o masterthesis.nls
latex masterthesis.tex
pdflatex masterthesis.tex
