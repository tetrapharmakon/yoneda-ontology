I:
	cd I-existence/; \
	  latexmk -pdf -shell-escape ontology1.tex
	  latexmk -c

Ip:
	cd I-existence/; \
	  latexmk -pdf -pvc -shell-escape ontology1.tex

vI:
	cd I-existence/; \
	  evince ontology1.pdf &

II:
	cd II-spheres/; \
	  latexmk -pdf -shell-escape main.tex
	  latexmk -c

IIp:
	cd II-spheres/; \
	  latexmk -pdf -pvc -shell-escape main.tex

IIv:
	evince II-spheres/main.pdf &

III:
	cd III-homot/; \
	  latexmk -pdf -shell-escape III-homot.tex
	  latexmk -c

IIIp:
	cd III-homot/; \
	  # latexmk -pdf -pvc -shell-escape ontology1.tex

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
	rm -f zipped-I.zip
	zip -r zipped-I I-existence/ -x .gitignore .git *.pdf *.bib *.bat makefile
