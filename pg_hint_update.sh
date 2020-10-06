#cd ~/
#git clone https://github.com/parimarjan/pg_hint_plan.git
cd ~/pg_hint_plan
#git checkout PG10
git pull
make clean
make
make install
# test it...
