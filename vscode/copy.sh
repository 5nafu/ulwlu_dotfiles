export DOTPATH=~/.config/dotfiles
cp -r ~/Library/Application\ Support/Code/User/snippets ${DOTPATH}/vscode/ &&
	cp ~/Library/Application\ Support/Code/User/settings.json ${DOTPATH}/vscode/ &&
	code --list-extensions > ${DOTPATH}/vscode/plugins.txt &&
	cp ~/Library/Application\ Support/Code/User/keybindings.json ${DOTPATH}/vscode/
