.PHONY: check lint

check:
	@.github/scripts/check-links.sh 
	@.github/scripts/check-trailing-spaces.sh


lint:
	npm install -g markdownlint-cli && markdownlint "**/*.md" --config .github/workflows/.markdownlint.json
