# Quick build
qbuild: thesis.tex
	@echo "Quick build"
	xelatex --shell-escape thesis.tex

# Full build
build: thesis.tex bibliography.bib
	xelatex --shell-escape thesis.tex
	biber thesis
	makeindex thesis.nlo -s nomencl.ist -o thesis.nls
	makeglossaries thesis
	xelatex --shell-escape thesis.tex
	xelatex --shell-escape thesis.tex

watch:
	latexmk -xelatex -pvc -shell-escape -synctex=1 thesis.tex

clean:
	rm -f *.lo[a,f,l,t,g] *.bb[l,g] *.blg *.out *.pdf *.nlo *.toc \
		 *.aux *-blx.bib *.run.xml *.sw[op] *~ *.bib.bak *.bib.sav \
		 *.fls *.fdb_latexmk *.md5 *.dpth *.run.xml *.auxlock *.bcf \
		 *.acn *.acr *.alg *.glg *.glo *.gls *.ist \
		 *.snm *.nav *.xdv *_bibertool.bib *.dep *.*-SAVE-ERROR \
		 *.sbl *.ilg *.nlo *.nls *.nlg *.sym
	rm -rf _minted-*/

spell:
	aspell -c -t chapters/finitev3.tex --add-extra-dicts=./my-words.txt
	aspell -c -t chapters/outcome.tex --add-extra-dicts=./my-words.txt
	aspell -c -t chapters/byev2.tex --add-extra-dicts=./my-words.txt
	aspell -c -t chapters/clashv2.tex --add-extra-dicts=./my-words.txt
	aspell -c -t chapters/prelims.tex --add-extra-dicts=./my-words.txt
	aspell -c -t chapters/intro.tex --add-extra-dicts=./my-words.txt
	#aspell -c -t frontbackmatter/*.tex --add-extra-dicts=./my-words.txt

