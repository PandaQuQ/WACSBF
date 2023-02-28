#       基于FEH和在线API实现的在线实时更换壁纸
#       作者：PandaQuQ
#       url: https://blog.pandaquq.tk/

function getWP(){
	if [ $1 -eq 1 ]
	then
		wget https://www.eatshit.cn/ -O ~/.config/WACSBF/cache/1
		grep -o  -a -E '/images-t/.*\.jpg'  ~/.config/WACSBF/cache/1  > ~/.config/WACSBF/cache/2
		url1=$(cat ~/.config/WACSBF/cache/2)
		url_real="https://www.eatshit.cn${url1}"
		wget $url_real -O ~/.config/WACSBF/downloaded_wallpapers/$2.jpg
		rm -rf ~/.config/WACSBF/cache/*
	elif [ $1 -eq 2 ] 
	then
		wget https://api.ixiaowai.cn/api/api2.php --no-check-certificate -O ~/.config/WACSBF/downloaded_wallpapers/$2.jpg
	elif [ $1 -eq 3 ]
	then
		wget `curl "https://img.xjh.me/random_img.php?type=bg"  | grep -o -E  'img\.xjh\.me/img/[[:digit:]]{2,10}_p[[:digit:]]\.jpg' | grep -o -E  'img\.xjh\.me/img/[[:digit:]]{2,10}_p[[:digit:]]\.jpg' -m 1 ` -O wget `curl "https://img.xjh.me/random_img.php?type=bg"  | grep -o -E  'img\.xjh\.me/img/[[:digit:]]{2,10}_p[[:digit:]]\.jpg' | grep -o -E  'img\.xjh\.me/img/[[:digit:]]{2,10}_p[[:digit:]]\.jpg' -m 1 ` -O ~/.config/WACSBF/downloaded_wallpapers/$2.jpg
	else
		wget `curl "https://tuapi.eees.cc/api .php?category=dongman&px=pc" |  grep -o -E  'https://tuapi\.eees\.cc/dongman/pc/TUAPI-EEES-CC-[[:digit:]]{2,12}\.jpg' ` -O ~/.config/WACSBF/downloaded_wallpapers/$2.jpg
	fi

}

function selWP(){

        for ((i=1;i<=3;i++))
        do
        	getWP $@ $i
        done
        
        return 0
}
function makeConfig(){
	mkdir -p ~/.config/WACSBF/cache
	mkdir -p ~/.config/WACSBF/downloaded_wallpapers
}

function changeWP(){
	mark=$(cat ~/.config/WACSBF/notfirstmark)
	if [ -n "$mark" ]
	then
		makeConfig
		selWP $@
		feh --randomize --no-fehbg --bg-fill ~/.config/WACSBF/downloaded_wallpapers/
		touch ~/.config/WACSBF/notfirstmark
		echo "not first time" > ~/.config/WACSBF/notfirstmark
	else
		feh --randomize --no-fehbg --bg-fill ~/.config/WACSBF/downloaded_wallpapers/
		selWP $@
	fi
}



#	1是4k风景图 2是小窝动漫api  3是xjh api  4是eees图片api
changeWP 1