FTP_DIR=cv

all: pdf html

pdf: xcv58.pdf xcv58-one-page.pdf

html: RaphaelPinson_fr.html RaphaelPinson_en.html

frenchcv: RaphaelPinson_fr.pdf
englishcv: RaphaelPinson_en.pdf

%.pdf: %.tex
	#lualatex -interaction=batchmode $<
	#lualatex -interaction=batchmode $<
	#xelatex -interaction=batchmode $<
	#xelatex -interaction=batchmode $<
	pdflatex $<
	latexmk -c

%.html: %.pdf
	pdf2htmlEX --zoom=2 $<

upload:
	-ncftpput -f ~/.ncftp/cc.cfg $(FTP_DIR)/ *.pdf
	-ncftpput -f ~/.ncftp/cc.cfg $(FTP_DIR)/ *.tex *.sty

clean:
	rm -f *.aux *.log *.out
	rm -f *.pdf

