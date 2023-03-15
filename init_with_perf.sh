mkdir -p log
mkdir -p log/perf
OUTDIR=~/log/perf/

E=dTLB-loads,iTLB-loads,branch-loads,instructions,cache-references,cpu-clock,task-clock,page-faults,minor-faults,major-faults,cs,cpu-migrations,alignment-faults,emulation-faults,branch-load-misses,branch-loads,bus-cycles,idle-cycles-backend,alignment-faults,cpu_cycles,inst_retired,inst_spec,itlb_walk,l1d_cache,op_retired,ttbr_write_retired

#perf stat -x, -e ${E} dd if=/dev/zero of=/dev/null count=1000000

#./disk_setup.sh
#echo "disk setup done"
sleep 3
perf stat -x, -e ${E} -o ${OUTDIR}bootstap.csv ./bootstrap.sh
echo "bootstrap done"
sleep 3
perf stat -x, -e ${E} -o ${OUTDIR}pg_setup.csv ./pg_setup.sh
echo "postgres setup done"
sleep 1
source ~/.bashrc_exports

createdb test
sleep 3
psql -d test < gen1.sql
sleep 3

perf stat -x, -e ${E} -o ${OUTDIR}pg_hint.csv ./pg_hint_setup.sh

#sleep 3
#./imdb_setup.sh
#bash ergast_setup.sh
#bash stats_ceb_setup.sh
#bash tpch_setup.sh
#bash stack_setup.sh
#bash tpch_setup2.sh
#bash tpcds_setup.sh

perf stat -x, -e ${E} -o ${OUTDIR}imdb_setup.csv bash imdb_setup.sh
perf stat -x, -e ${E} -o ${OUTDIR}stats_ceb_setup.csv bash stats_ceb_setup.sh
perf stat -x, -e ${E} -o ${OUTDIR}ergast_setup.csv bash ergast_setup.sh
perf stat -x, -e ${E} -o ${OUTDIR}tpch_setup.csv bash tpch_setup.sh
perf stat -x, -e ${E} -o ${OUTDIR}zdbs_setup.csv bash zdbs_setup.sh

cp ~/postgres_setup_scripts/postgresql.conf $PG_DATA_DIR/

