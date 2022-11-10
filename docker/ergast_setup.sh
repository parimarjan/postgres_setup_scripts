#!/bin/sh

createdb -U $POSTGRES_USER ergastf1
wget -O /var/lib/postgresql/ergastf1 https://www.dropbox.com/s/gr5lpmcdhsbe3tb/ergastf1.tar?dl=1
pg_restore -v -d ergastf1 -U $POSTGRES_USER /var/lib/postgresql/ergastf1
