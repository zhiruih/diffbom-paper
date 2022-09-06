# Simplified makefile using latexmk...

NAME = diffbom

all: %NAME.pdf

%NAME.pdf: FORCE
	latexmk -bibtex -pdflatex $(NAME)

.PHONY: FORCE

clean:
	latexmk -bibtex -C $(NAME)
