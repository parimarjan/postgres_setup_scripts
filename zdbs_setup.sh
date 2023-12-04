source ~/.bashrc

#wget -O walmart.tar https://www.dropbox.com/s/w9fju2mqov5jd8o/walmart.tar?dl=1
#createdb walmart
#pg_restore -v -d walmart ./walmart.tar

#wget -O movielens.tar https://www.dropbox.com/s/awzmrqf3cg8dla8/movielens.tar?dl=1
#createdb movielens
#pg_restore -v -d movielens ./movielens.tar

#wget -O financial.tar https://www.dropbox.com/s/07n8rnax1v9cymt/financial.tar?dl=1
#createdb financial
#pg_restore -v -d financial ./financial.tar

#wget -O credit.tar https://www.dropbox.com/s/4gny208qbbdbgwh/credit.tar?dl=1
#createdb credit
#pg_restore -v -d credit ./credit.tar

#wget -O baseball.tar https://www.dropbox.com/s/38if73psx03jidh/baseball.tar?dl=1
#createdb baseball
#pg_restore -v -d baseball ./baseball.tar

#wget -O accidents.tar https://www.dropbox.com/s/nd9ewgssczlo53j/accidents.tar?dl=1
#createdb accidents
#pg_restore -v -d accidents ./accidents.tar

wget -O zdbs.tar.gz https://www.dropbox.com/s/pb413g1523882t7/zdbs.tar.gz?dl=1
tar -xvf zdbs.tar.gz
cd zdbs

#createdb accidents
#pg_restore -v -d accidents ./accidents.tar

createdb financial
pg_restore -v -d financial ./financial.tar

#createdb consumerexpenditure
#pg_restore -v -d consumerexpenditure ./consumerexpenditure.tar

#createdb seznam
#pg_restore -v -d seznam ./seznam.tar

createdb ccs
pg_restore -v -d ccs ./ccs.tar

#createdb visualgenome
#pg_restore -v -d visualgenome ./visualgenome.tar

createdb airline
pg_restore -v -d airline ./airline.tar

createdb ssb
pg_restore -v -d ssb ./ssb.tar

createdb credit
pg_restore -v -d credit ./credit.tar

#createdb basketball_men
#pg_restore -v -d basketball_men ./basketball.tar






