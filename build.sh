filename="thesis-karadimos-2020"
makeindex $filename.nlo -s nomencl.ist -o $filename.nls
pdflatex -synctex=1 -shell-escape -interaction=nonstopmode $filename.tex
biber $filename
pdflatex -synctex=1 -shell-escape -interaction=nonstopmode $filename.tex
pdflatex -synctex=1 -shell-escape -interaction=nonstopmode $filename.tex
evince $filename.pdf