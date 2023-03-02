source ~/.bashrc
git clone https://github.com/gregrahn/tpch-kit.git
cd tpch-kit/dbgen
make

createdb tpch
psql tpch -f dss.ddl
./dbgen -vf -s 1

for i in `ls *.tbl`; do
  table=${i/.tbl/}
  echo "Loading $table..."
  sed 's/|$//' $i > /tmp/$i
  psql tpch -q -c "TRUNCATE $table"
  psql tpch -c "\\copy $table FROM '/tmp/$i' CSV DELIMITER '|'"
done

mkdir /tmp/queries
for i in `ls queries/*.sql`; do
  tail -r $i | sed '2s/;//' | tail -r > /tmp/$i
done

DSS_QUERY=/tmp/queries ./qgen | sed 's/limit -1//' | sed 's/day (3)/day/' > queries.sql

#psql tpch < queries.sql


