#!/bin/bash

function is_window_exist() {
    local type=$1
    local regex=$2
    case $type in
    class)
        if hyprctl clients | grep -q "class: $regex"; then
            return 0
        else
            return 1
        fi
        ;;
    title)
        if hyprctl clients | grep -q "title: $regex"; then
            return 0
        else
            return 1
        fi
        ;;
    *)
        return 1
        ;;
    esac
}

function close_window() {
    local type=$1
    local regex=$2
    case $type in
    class)
        hyprctl dispatch closewindow class:$regex
        ;;
    title)
        hyprctl dispatch closewindow title:$regex
        ;;
    *)
        return 1
        ;;
    esac
}

function open_window() {
    local app_name=$1
    $1 &
}

if is_window_exist $1 $2; then
    echo "Window $2 exists"
    # 关闭窗口
    close_window $1 $2
else
    echo "Window $2 does not exist"
    # 打开窗口
    open_window $3
fi

# 检查 WeChat 窗口是否存在
# if hyprctl clients | grep -q "wechat"; then
#     # 如果存在，关闭 WeChat 窗口
#     echo "WeChat 窗口存在"
# else
#     # 如果不存在，打开 WeChat
#     /usr/bin/wechat-uos-qt & # 替换为 WeChat 的实际路径
# fi
