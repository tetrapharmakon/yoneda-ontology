Ip:
	latexmk -pdf -shell-escape -pvc I-existence.tex
	latexmk -c
I:
	latexmk -pdf -shell-escape I-existence.tex
	latexmk -c
lu:
	cd logica-univ-submission/; \
	  latexmk -pdf -shell-escape luniv-ontology1.tex
	  latexmk -c
	  cd ..
git:
	bash -c 'git add -A'
	bash -c 'git commit -m "automated update"'
	bash -c 'git push'
zip:
	rm zipped-I.zip
	zip -r zipped-I . -x .gitignore '_appmeta/*' *.pdf *.bib *.bat MAKE
