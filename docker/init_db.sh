#!/bin/sh
#createdb -U "$CARD_USER" imdb

#sed -i 's/max_wal_size = 1GB/max_wal_size = 50GB/g' /var/lib/postgresql/data/postgresql.conf
#sed -i 's/shared_buffers = 128MB/shared_buffers = 4GB/g' /var/lib/postgresql/data/postgresql.conf

#sed -i 's/shared_buffers = 128MB/shared_buffers = 4GB/g' /var/lib/postgresql/data/postgresql.conf

sed -i 's/geqo = on/geqo = off/g' /var/lib/postgresql/data/postgresql.conf
sed -i 's/max_parallel_workers = 8/max_parallel_workers = 0/g' /var/lib/postgresql/data/postgresql.conf
sed -i 's/max_parallel_workers_per_gather = 2/max_parallel_workers_per_gather = 0/g' /var/lib/postgresql/data/postgresql.conf

echo "done updating conf file"


