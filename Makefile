all: pdf

pdf: xcv58.pdf

*.pdf : *.sty *.tex

html: xcv58.html

%.pdf: %.tex
	pdflatex $<
	latexmk -c

# %.html: %.pdf
# 	pdf2htmlEX --zoom=2 $<

clean:
	rm -f *.aux *.log *.out
	rm -f *.pdf

