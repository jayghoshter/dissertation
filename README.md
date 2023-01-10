# Dissertation Source

This repository houses the source LaTeX files for my Ph.D. dissertation. The document class `kaobook` is used as a template and the relevant files are present in the subdirectory of the same name. 

# Design

While it would have been possible to only store my dissertation files in this repository, I opted to also include the class source for the sake of completion. This allows the repository to be self-contained and deployable from anywhere.

To avoid polluting the `kaobook` class with my files, I placed the class source in a subdirectory. This is doubly important since the class is not quite finished and is under active development. Mixing sources in this situation would be unwise. 

# Building

As the class files are not at the root location anymore, we must set `$TEXINPUTS` to point to the necessary subdirectory.

```
export TEXINPUTS=$PWD/kaobook:$TEXINPUTS
pdflatex main.tex
```

To make things easier, we can use `latexmk` with the `$TEXINPUTS` set in a local config file `latexmkrc`.

```
# Build a pdf
latexmk -pdf

# Clean 
latexmk -c

# Continuous preview
latexmk -pvc
```

For an additional layer of convenience, a `Makefile` is included.
