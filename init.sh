./bootstrap_all.sh
echo "bootstrap done"
sleep 3
./pg_setup_local.sh
echo "postgres setup done"
sleep 1
source ~/.bashrc_exports

