t:
	latexmk -pdf -shell-escape fun-erkennen.tex
	latexmk -c

title:
	latexmk -pdf -shell-escape titlepage.tex
	latexmk -c

p:
	latexmk -pdf -shell-escape -pvc fun-erkennen.tex

v:
	evince fun-erkennen.pdf &

c:
	latexmk -C

git:
	bash -c 'git add -A'
	bash -c 'git commit -m "standard commit perché denta non sa usare bash"'
	bash -c 'git push'

wc:
	./count.sh