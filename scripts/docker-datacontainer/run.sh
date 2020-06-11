
#!/bin/bash

timestamp=`date +%Y/%m/%d-%H:%M:%S`
echo "[$timestamp] Copying files to /usr/data/openapispecs"
mkdir -p /usr/data/openapispecs/.git
cp -R /usr/data/specrepo/* /usr/data/openapispecs/
cp -R /usr/data/specrepo/.git/* /usr/data/openapispecs/.git/

timestamp=`date +%Y/%m/%d-%H:%M:%S`
echo "[$timestamp] Deleting directory /usr/data/specrepo"
rm -R /usr/data/specrepo/

timestamp=`date +%Y/%m/%d-%H:%M:%S`
echo "[$timestamp] switching to /usr/data/openapispecs"
cd /usr/data/openapispecs/
while true; do timestamp=`date +%Y/%m/%d-%H:%M:%S`; echo "[$timestamp] Checking for updates (git pull).";git pull; sleep 10; done
