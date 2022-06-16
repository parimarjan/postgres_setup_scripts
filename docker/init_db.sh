#!/bin/sh

#sed -i 's/shared_buffers = 128MB/shared_buffers = 4GB/g' /var/lib/postgresql/data/postgresql.conf

sed -i 's/geqo = on/geqo = off/g' /var/lib/postgresql/data/postgresql.conf

### TODO: set this automatically
### need this when memory < 1GB
#sed -i 's/shared_buffers = 128MB/shared_buffers = 32MB/g' /var/lib/postgresql/data/postgresql.conf
#sed -i 's/#work_mem = 4MB/work_mem = 64kB/g' /var/lib/postgresql/data/postgresql.conf

sed -i 's/#max_parallel_workers = 8/max_parallel_workers = 0/g' /var/lib/postgresql/data/postgresql.conf
sed -i 's/#max_parallel_workers_per_gather = 2/max_parallel_workers_per_gather = 0/g' /var/lib/postgresql/data/postgresql.conf

echo "done updating conf file"


