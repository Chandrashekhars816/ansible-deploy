#!/bin/bash
mkdir  /dvd
mount  /dev/cdrom    /dvd
echo "mount /dev/cdrom /dvd" >> /etc/rc.d/rc.local
chmod +x /etc/rc.d/rc.local
cp dvd.repo /etc/yum.repos.d/dvd.repo
dnf makecache
echo "installing ansible"
