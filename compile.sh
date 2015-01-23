#!/bin/bash
latex masterthesis.tex
bibtex masterthesis.aux
sed -i 's/, and/ and/g' masterthesis.bbl
sed -i 's/Lilek, u\./Lilek, \\u{Z}\./g' masterthesis.bbl
makeindex masterthesis.nlo -s nomencl.ist -o masterthesis.nls
latex masterthesis.tex
pdflatex masterthesis.tex
