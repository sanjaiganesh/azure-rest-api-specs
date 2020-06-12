#!/bin/bash

timestamp=`date +%Y/%m/%d-%H:%M:%S`
echo "[$timestamp] rename mounted /usr/data/openapispecs to /usr/data/deleteme"
mv /usr/data/openapispecs /usr/data/deleteme

timestamp=`date +%Y/%m/%d-%H:%M:%S`
echo "[$timestamp] rename mounted /usr/data/specrepo to /usr/data/openapispecs"
mv /usr/data/specrepo /usr/data/openapispecs

timestamp=`date +%Y/%m/%d-%H:%M:%S`
echo "[$timestamp] Deleting directory /usr/data/deleteme"
rm -R /usr/data/deleteme/

timestamp=`date +%Y/%m/%d-%H:%M:%S`
echo "[$timestamp] Initialization completed successfully."
