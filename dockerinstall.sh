#!/usr/bin/bash

systemctl restart firewalld
setenforce 1
dnf install docker-ce-18.06.3* --nobest  -y
systemctl restart docker.service
systemctl enable  docker.service
