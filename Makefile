all:
	rm ~/.vscode/extensions/extensions.json
	rm ~/Library/Application\ Support/Code/User/settings.json
	stow --ignore=settings -t ~ -R .
	stow  -d ./.vscode/settings -t ~/Library/Application\ Support/Code/User/ -R .
