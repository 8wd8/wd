#!/bin/bash
yum -y install expect
bash <(curl -sSL 'https://8wd8.github.io/wd/shell/btinstall.sh')
expect <(curl -sSL 'https://8wd8.github.io/wd/shell/btsetup')

