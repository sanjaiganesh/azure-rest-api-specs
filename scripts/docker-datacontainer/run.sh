#!/bin/bash

timestamp=`date +%Y/%m/%d-%H:%M:%S`
echo "[$timestamp] Moving files to /usr/data/openapispecs"
mv /usr/data/specrepo/* /usr/data/openapispecs/

timestamp=`date +%Y/%m/%d-%H:%M:%S`
echo "[$timestamp] Deleting directory /usr/data/specrepo"
rm -R /usr/data/specrepo/

echo "[$timestamp] Init completed successfully."
