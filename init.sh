bash disk_setup.sh
echo "disk setup done!"
./bootstrap.sh
echo "bootstrap done"
sleep 3
cd mysql
bash mysql_setup.sh
echo "mysql setup done"
sleep 1
source ~/.bashrc

bash download_csv_files.sh
echo "imdb setup done!"

