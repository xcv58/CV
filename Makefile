all: pdf

pdf: resume.pdf

*.pdf : *.sty *.tex

%.pdf: %.tex
	pdflatex $<
	latexmk -c

clean:
	rm -f *.aux *.log *.out
	rm -f *.pdf

