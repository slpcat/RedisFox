#!/bin/sh

curr_dir=$(cd `dirname $0`; pwd)
old_gopath=$GOPATH
export GOPATH=$curr_dir

src_dir="src"

if [ ! -d ${src_dir}"/github.com/gin-gonic/gin" ]; then
    go get github.com/gin-gonic/gin
fi

if [ ! -d ${src_dir}"/github.com/garyburd/redigo" ]; then
    go get github.com/garyburd/redigo/redis
fi

if [ ! -d ${src_dir}"/github.com/go-yaml/yaml" ]; then
    go get github.com/go-yaml/yaml
fi

#先安装golang.org/x/net/context包
if [ ! -d ${src_dir}"/github.com/mattn/go-sqlite3" ]; then
    go get github.com/mattn/go-sqlite3
fi

export GOPATH=$old_gopath
