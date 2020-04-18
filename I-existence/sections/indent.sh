find . -name "*.tex" -exec latexindent -w {} \;
rm *.bak* *.log
