all: build

build:
	latexmk -pdf

preview:
	latexmk -pdf -pvc

clean:
	latexmk -c

.PHONY: all build preview clean
