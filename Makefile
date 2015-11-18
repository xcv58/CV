all: pdf

pdf: resume.pdf

*.pdf : *.tex

%.pdf: %.tex
	pdflatex $<
	latexmk -c

clean:
	rm -f *.aux *.log *.out
	rm -f *.pdf

