.PHONY: cv_matthias_rebel_2016.pdf clean

TEX = pandoc
src = template.tex details.yml
FLAGS = --latex-engine=xelatex

cv_matthias_rebel_2016.pdf: $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS) --verbose

clean :
	rm output.pdf
