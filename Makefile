# This only makes the template, extend it the way you want;
# or you can use any other tool to compile the thesis...

all: pdf thesespdf

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

thesesdvi:
	#(cd Figures ; make)
	latex theses
	bibtex theses
	latex theses
	latex theses

thesespdf:
	#(cd Figures ; make)
	pdflatex theses
	bibtex theses
	pdflatex theses
	pdflatex theses


clean:
	#(cd Figures ; make clean)
	rm -f main.acn main.acr main.alg main.aux main.bbl main.blg main.dvi main.glg main.glo main.gls main.glsdefs main.ist main.lof main.log main.lot main.out main.pdf main.toc 
	rm -f theses.acn theses.acr theses.alg theses.aux theses.bbl theses.blg theses.dvi theses.glg theses.glo theses.gls theses.glsdefs theses.ist theses.lof theses.log theses.lot theses.out theses.pdf theses.toc 
	rm -f *.aux */*.aux */*/*.aux
