TARGET=paper
BIB=biblio1.bib

all: clean ${TARGET}.pdf

${TARGET}.pdf: ${TARGET}.tex ${BIB} verifox.tex
	pdflatex ${TARGET}.tex
	bibtex ${TARGET}
	pdflatex ${TARGET}.tex
	pdflatex ${TARGET}.tex

clean:
	rm -f ${TARGET}.{log,aux,dvi,bbl,blg,toc,ps,pdf,fls,out} 

purge: clean
	rm -f ${TARGET}.pdf

PHONY : all clean purge
