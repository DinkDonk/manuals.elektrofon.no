.PHONY: KLANG
KLANG:
	pandoc --standalone --toc --template KLANG/template.html -f markdown -t html5 -o KLANG/index.html KLANG/index.md

all: KLANG

.PHONY: serve
serve:
	python3 -m http.server
