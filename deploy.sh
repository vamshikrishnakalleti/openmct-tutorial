#!/bin/bash
hostname=$(curl http://192.168.1.47/metadata/v1/hostname)
docker run -d -p 80:8080 --name openmct-"$hostname" mvkaran/openmct:"$hostname"
