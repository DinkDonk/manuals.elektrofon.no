.PHONY: klang
klang:
	pandoc --standalone --toc --template klang/template.html -f markdown -t html5 -o klang/index.html klang/index.md

all: klang
