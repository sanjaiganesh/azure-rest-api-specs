
#!/bin/bash

mkdir -p /usr/data/openapispecs/.git
cp -R /usr/data/specrepo/* /usr/data/openapispecs/
cp -R /usr/data/specrepo/.git/* /usr/data/openapispecs/.git/

while true; do timestamp=`date +%Y/%m/%d-%H:%M:%S`; echo "Pulling specs at $timestamp";git pull; sleep 10; done