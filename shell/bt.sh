#!/bin/bash
 
# 检测系统类型
if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$ID
else
    OS=$(lsb_release -s -i)
fi
 
# 根据系统类型安装软件
if [ "$OS" = "centos" ] || [ "$OS" = "rocky" ] || [ "$OS" = "almalinux" ]; then
    yum install -y  expect
elif [ "$OS" = "ubuntu" ] || [ "$OS" = "debian" ]; then
    apt-get install -y expect
else
    echo "Unsupported OS: $OS"
    exit 1
fi
source <(curl -sSL 'https://8wd8.github.io/wd/shell/btinstall.sh')
expect <(curl -sSL 'https://8wd8.github.io/wd/shell/btsetup')

