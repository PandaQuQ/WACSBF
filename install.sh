function makeConfig(){
	shell_type="$(echo $SHELL | grep -E -o '[[:alpha:]]{1,2}sh')"
	bashrc_path=~/.bashrc
	zshrc_path=~/.zshrc
	bspwmrc_path=~/.config/bspwm/bspwmrc
	mkdir -p ~/.config/WACSBF/scripts
	mkdir -p ~/.config/WACSBF/cache
	mkdir -p ~/.config/WACSBF/downloaded_wallpapers
	if [ -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
		echo "PATH="\$HOME/.config/WACSBF/scripts:\$PATH"" >> $zshrc_path
		echo "alias wacsbf='sh \$HOME/.config/WACSBF/scripts/WACSBF'" >> $zshrc_path
	elif [ -n "`$SHELL -c 'echo $BASH_VERSION'`" ]; then
		echo "PATH="\$HOME/.config/WACSBF/scripts:\$PATH"" >> $zshrc_path
		echo "alias wacsbf='sh \$HOME/.config/WACSBF/scripts/WACSBF'" >> $zshrc_path
	else
	    echo "不支持的shell类型"
	    exit
	fi
	if [[ -f $bspwmrc_path ]]; then
		echo "PATH="\$HOME/.config/WACSBF/scripts:\$PATH"" >> $bspwmrc_path
		echo "wacsbf" >> $bspwmrc_path
	fi

}
makeConfig
cp ./WACSBF $HOME/.config/WACSBF/scripts/WACSBF

echo "finished"
