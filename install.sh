#!/usr/bin/env bash
function makeConfig(){
	shell_type="$(echo $SHELL | grep -E -o '[[:alpha:]]{1,2}sh')"
	bashrc_path=~/.bashrc
	zshrc_path=~/.zshrc
	bspwmrc_path=~/.config/bspwm/bspwmrc
	sxhkdrc_path=~/.config/bspwm/sxhkdrc
	mkdir -p ~/.config/bspwm/scripts
	mkdir -p ~/.config/WACSBF/cache
	mkdir -p ~/.config/bspwm/theme/wallpapers/
	if [ -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
		echo "alias wacsbf='sh \$HOME/.config/bspwm/scripts/WACSBF'" >> $zshrc_path
	elif [ -n "`$SHELL -c 'echo $BASH_VERSION'`" ]; then
		echo "alias wacsbf='sh \$HOME/.config/bspwm/scripts/WACSBF'" >> $zshrc_path
	else
	    echo "unsupported shell type"
	    exit
	fi
	if [[ -f $bspwmrc_path ]]; then
		echo "wacsbf" >> $bspwmrc_path
	fi
		if [[ -f $sxhkdrc_path ]]; then
		echo "# Random wallpaper
super + alt + w
	wacsbf " >> $sxhkdrc_path
	fi


}
makeConfig
cp ./WACSBF $HOME/.config/bspwm/scripts/WACSBF

echo "WACSBF installation finished"
