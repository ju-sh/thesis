build: synopsis.tex
	xelatex --shell-escape synopsis.tex
	biber synopsis
	xelatex --shell-escape synopsis.tex
	xelatex --shell-escape synopsis.tex

watch:
	latexmk -xelatex -pvc -shell-escape -synctex=1 synopsis.tex

clean:
	rm -f *.lo[a,f,l,t,g] *.bb[l,g] *.blg *.out *.pdf *.nlo *.toc \
		 *.aux *-blx.bib *.run.xml *.sw[op] *~ *.bib.bak *.bib.sav \
		 *.fls *.fdb_latexmk *.md5 *.dpth *.run.xml *.auxlock *.bcf \
		 *.acn *.acr *.alg *.glg *.glo *.gls *.ist \
		 *.snm *.nav *.xdv *_bibertool.bib *.dep *.*-SAVE-ERROR \
		 *.sbl *.ilg *.nlo *.nls *.nlg *.sym
	rm -rf _minted-*/
