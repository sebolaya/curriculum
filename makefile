# set latexfile to the name of the main file without the .tex
latexfile=CV_FR_Olaya
DIR=build

# Use this line, if you want to use latex command
TEX = pdflatex --shell-escape -synctex=1 -interaction=nonstopmode --src-specials -output-directory=$(DIR)
BIBTEX=biber

all : 
	$(TEX) $(latexfile)
	$(BIBTEX) $(DIR)/$(latexfile)
	$(TEX) $(latexfile)
	$(TEX) $(latexfile)

clean :
	cp $(DIR)/*.pdf ./
	rm -f $(DIR)/*.*
	
	
