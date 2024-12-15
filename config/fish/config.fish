# export "http_proxy=http://127.0.0.1:7890"
# export "https_proxy=http://127.0.0.1:7890"
# export "all_proxy=socks5://127.0.0.1:7890"

set -g fish_greeting ""

# alias ff="fastfetch --config examples/10.jsonc"
alias ff="fastfetch"
alias restartwaybar='killall waybar && waybar &'
alias hosts='sudo wget https://raw.githubusercontent.com/googlehosts/hosts/master/hosts-files/hosts -O /etc/hosts'

if status is-interactive
    # Commands to run in interactive sessions can go here
end

export MOZ_ENABLE_WAYLAND=1
export MOZ_ENABLE_WAYLAND=1
export EDITOR=vim
# export XDG_CONFIG_HOME="{$HOME}/.config"

# Typora
export TYPORA_USER_FLAGS="--enable-features=WaylandWindowDecorations --ozone-platform-hint=auto --enable-wayland-ime"

# Dotnet
export DOTNET_RPPT=/usr/share/dotnet/

# QQ
export LITELOADERQQNT_PROFILE="$HOME/.config/QQ/LiteLoaderQQNT/"

export LANG=zh_CN.UTF-8

if [ "$TERM" = "linux" ]
        echo -en "\e]P01F2229" #black
        echo -en "\e]P88C42AB" #darkgrey
        echo -en "\e]P1D41919" #darkred
        echo -en "\e]P9EC0101" #red
        echo -en "\e]P25EBDAB" #darkgreen
        echo -en "\e]PA47D4B9" #green
        echo -en "\e]P3FEA44C" #brown
        echo -en "\e]PBFF8A18" #yellow
        echo -en "\e]P4367bf0" #darkblue
        echo -en "\e]PC277FFF" #blue
        echo -en "\e]P5BF2E5D" #darkmagenta
        echo -en "\e]PDD71655" #magenta
        echo -en "\e]P649AEE6" #darkcyan
        echo -en "\e]PE05A1F7" #cyan
        echo -en "\e]P7E6E6E6" #lightgrey
        echo -en "\e]PFFFFFFF" #white
    end

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

    # function set_wayland_env
    # 设置语言环境为中文
    # export LANG=zh_CN.UTF-8
    # 解决QT程序缩放问题
    # export QT_AUTO_SCREEN_SCALE_FACTOR=1
    # QT使用wayland和gtk
    # export QT_QPA_PLATFORM="wayland;xcb"
    # export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
    # 使用qt5ct软件配置QT程序外观
    # export QT_QPA_PLATFORMTHEME=qt5ct
    # 一些游戏使用wayland
    # export SDL_VIDEODRIVER=wayland
    # 解决java程序启动黑屏错误
    # export _JAVA_AWT_WM_NONEREPARENTING=1
    # GTK后端为 wayland和x11,优先wayland
    # export GDK_BACKEND="wayland,x11"
    # end

    # set_wayland_env
