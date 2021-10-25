.PHONY: build

build:
	docker build -t code-checker .
	@echo "\n\n Use \`docker run -it code-checker\` to display usage" 
