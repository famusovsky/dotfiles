all:
	stow --ignore=settings -t ~ -R .
	stow  -d ./.vscode/settings -t ~/Library/Application\ Support/Code/User/ -R .
