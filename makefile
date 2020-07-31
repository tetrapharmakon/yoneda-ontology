I:
	cd I-existence/logica-univ-submission/; \
	  latexmk -pdf -shell-escape luniv-ontology1.tex
	  latexmk -c

Ip:
	cd I-existence/logica-univ-submission/; \
	  latexmk -pdf -pvc -shell-escape luniv-ontology1.tex

er:
	cd erkennen/; \
	  latexmk -pdf -shell-escape fun-erkennen.tex
	  latexmk -c

erp:
	cd erkennen/; \
	  latexmk -pdf -pvc -shell-escape fun-erkennen.tex

git:
	bash -c 'git add -A'
	bash -c 'git commit -m "automated update"'
	bash -c 'git push'

zipI:
	rm zipped-I.zip
	zip -r zipped-I . -x .gitignore 'logica-univ-submission/*' *.pdf *.bib *.bat makefile