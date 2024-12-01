SHELL = /bin/bash

.SILENT:
.PHONY: * **/*

check: lint

### Lint and Format ###
lint: markdown-lint

markdown-lint:
	echo "Markdown Lint"
	echo "-------------"
	echo "markdownlint $$(markdownlint --version)"
	markdownlint '**/*.md'
	echo "Markdown Lint completed successfully"
	echo
