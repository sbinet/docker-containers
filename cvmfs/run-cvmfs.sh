#!/bin/sh

echo "::: mounting FUSE..."
mount -a

echo "::: running SSH-Daemon..."
/usr/sbin/sshd -D &

echo "::: bye."

