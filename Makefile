.PHONY: KLANG
KLANG:
	pandoc --standalone --toc --template KLANG/template.html -f markdown -t html5 -o KLANG/index.html KLANG/index.md

all: KLANG
