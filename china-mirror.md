# 常用镜像设置
## golang
go env -w  GOPROXY=https://goproxy.cn,direct

go env -w GOSUMDB=sum.golang.google.cn

## pip
pip config set global.index-url https://mirrors.bfsu.edu.cn/pypi/web/simple

## npm
npm config set registry https://registry.npmmirror.com

yarn config set registry https://registry.npmmirror.com

pnpm config set registry https://registry.npmmirror.com

## php
composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
