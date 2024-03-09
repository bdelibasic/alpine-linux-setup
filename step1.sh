#!/bin/ash

echo "https://dl-cdn.alpinelinux.org/alpine/v3.19/community/" >> /etc/apk/repositories
apk update
apk upgrade

