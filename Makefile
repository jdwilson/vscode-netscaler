.PHONY: deps test package clean

deps: ## Install dev dependencies
	npm install

test: ## Run grammar tests against the test corpus
	npm test

package: ## Build the .vsix for sideloading
	npx @vscode/vsce package

clean: ## Remove build artifacts
	rm -f *.vsix
