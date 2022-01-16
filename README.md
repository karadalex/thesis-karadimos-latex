

## Building sequence

Custom quick build in TexMaker
```
makeindex %.nlo -s nomencl.ist -o %.nls|pdflatex -synctex=1 -shell-escape -interaction=nonstopmode %.tex|biber %|pdflatex -synctex=1 -shell-escape -interaction=nonstopmode %.tex|pdflatex -synctex=1 -shell-escape -interaction=nonstopmode %.tex|evince %.pdf
```
or run following script `./build.sh`


## Optimisations

[https://legacy.imagemagick.org/Usage/resize/#shrink](https://legacy.imagemagick.org/Usage/resize/#shrink)
[https://www.overleaf.com/learn/how-to/Optimising_very_large_image_files](https://www.overleaf.com/learn/how-to/Optimising_very_large_image_files)

```bash
cd images
for f in ./**/*.png ; do convert "$f" -resize 800x800\> "$f" ; done
cd ..
./reduce.sh
```