all: pdf

pdf: xcv58.pdf xcv58-one-page.pdf

*.pdf : *.sty

html: xcv58.html xcv58-one-page.html

%.pdf: %.tex
	pdflatex $<
	latexmk -c

%.html: %.pdf
	pdf2htmlEX --zoom=2 $<

clean:
	rm -f *.aux *.log *.out
	rm -f *.pdf

