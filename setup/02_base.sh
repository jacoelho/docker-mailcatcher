#!/bin/bash -ex

source /etc/environment

apt-get update

apt-get upgrade

apt-get install runit

mkdir -p /etc/service

touch /etc/inittab

chmod 755 /usr/sbin/runsvdir-start