#!/bin/sh
cd /django2k8s
/usr/bin/python3 manage.py runserver 0:8080 2 >/tmp/loglog
while test true
do
sleep 5
done
