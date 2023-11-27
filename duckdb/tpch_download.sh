
source ~/.bashrc
git clone https://github.com/gregrahn/tpch-kit.git
cd tpch-kit/dbgen
make

./dbgen -vf -s 10
for file in *.tbl; do mv "$file" "${file%.tbl}.csv"; done
