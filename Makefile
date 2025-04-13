.PHONY: check

check:
	@.github/scripts/check-links.sh 
	@.github/scripts/check-trailing-spaces.sh


test:
	npm install -g markdownlint-cli && markdownlint "research/glossary.md" --config .github/workflows/.markdownlint.json
