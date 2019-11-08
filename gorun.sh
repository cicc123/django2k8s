#!/bin/sh
cd /django2k8s
while test true
do
/usr/bin/python3 manage.py runserver 0:8080 2>>/tmp/loglog
sleep 5
done
