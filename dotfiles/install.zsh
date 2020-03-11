#! /usr/local/bin/zsh

setopt globdots
local -A opthash
zparseopts -D -A opthash -- -force -help

if [[ -n "${opthash[(i)--help]}" ]]; then
        echo "Add option --force to install without checking." && exit;
fi

if [[ -z "${opthash[(i)--force]}"  ]]; then
        read Ans"?Your file will be overwritten(Y/n): "
        if [[ $Ans != 'Y' ]]; then echo 'Canceled\n' && exit; fi;
fi;

EXEPATH=$0:A:h
for abspath (${EXEPATH}/*); do
	filename=$(basename -- "$abspath");

	if [[ $filename = 'install.zsh' ]]; then continue ; fi;
	if [[ $filename = '.rustcfg' ]]; then ln -sfnv $abspath ~/.cargo/config ; fi;
	if [[ $filename = 'init.vim' ]]; then ln -sfnv $abspath ~/.config/nvim/init.vim ; fi;

	ln -sfnv $abspath ~/$filename;
done
