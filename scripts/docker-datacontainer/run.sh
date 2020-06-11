
#!/bin/bash

timestamp=`date +%Y/%m/%d-%H:%M:%S`
echo "[$timestamp] Copying files to /usr/data/openapispecs"
mkdir -p /usr/data/openapispecs/.git
cp -R /usr/data/specrepo/* /usr/data/openapispecs/
cp -R /usr/data/specrepo/.git/* /usr/data/openapispecs/.git/
