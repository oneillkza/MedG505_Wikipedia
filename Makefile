SRC=$(wildcard *.md)
PDF = $(SRC:.md=.pdf)


all: $(PDF)	

%.pdf: %.md
	pandoc -t beamer -s $< -o $@ --slide-level 2 -fmarkdown-implicit_figures -V fontsize=10pt 

