#!/bin/bash

if pidof "fcitx5_auto_switch" >/dev/null; then
    notify-send "Fcitx5 自动切换已关闭"
    pkill -f fcitx5_auto_switch
else
    echo "1"
    notify-send "Fcitx5 自动切换已开启"
    ~/.scripts/fcitx5_auto_switch/fcitx5_auto_switch
fi
