

## Building sequence

Custom quick build in TexMaker
```
makeindex %.nlo -s nomencl.ist -o %.nls|pdflatex -synctex=1 -shell-escape -interaction=nonstopmode %.tex|biber %|pdflatex -synctex=1 -shell-escape -interaction=nonstopmode %.tex|pdflatex -synctex=1 -shell-escape -interaction=nonstopmode %.tex|evince %.pdf
```
or run following script `./build.sh`