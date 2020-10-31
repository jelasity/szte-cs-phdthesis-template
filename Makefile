# This only makes the template, extend it the way you want;
# or you can use any other tool to compile the thesis...

all: pdf

dvi:
	#(cd Figures ; make)
	latex main
	makeglossaries main
	bibtex main
	latex main
	latex main

pdf:
	#(cd Figures ; make)
	pdflatex main
	makeglossaries main
	bibtex main
	pdflatex main
	pdflatex main


clean:
	#(cd Figures ; make clean)
	rm -f main.acn main.acr main.alg main.aux main.bbl main.blg main.dvi main.glg main.glo main.gls main.glsdefs main.ist main.lof main.log main.lot main.out main.pdf main.toc 
	rm -f *.aux */*.aux */*/*.aux
