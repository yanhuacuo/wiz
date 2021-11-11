#!/bin/bash

if [ ! -f "/usr/bin/curl" ];then
  wget -LO ./wiznote/wiz.AppImage https://url.wiz.cn/u/linux_new
else
  curl -Lo ./wiznote/wiz.AppImage https://url.wiz.cn/u/linux_new
fi

if [ ! -d ~/.local/share/applications ]; then
  mkdir ~/.local/share/applications
fi

cp -rf ./wiznote/wiznote.desktop ~/.local/share/applications

sudo cp -rf wiznote /opt

sudo chmod a+x -R /opt/wiznote

echo "将 wiznote 安放成功，并已添加程序快捷方式"
