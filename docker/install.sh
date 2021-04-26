#sudo docker build --build-arg LCARD_USER -t pg12 .
#IMAGE_NAME=card-db
#sudo docker build --build-arg LCARD_USER=${LCARD_USER} -t pg12 .
#sudo docker run --name $IMAGE_NAME -p ${LCARD_PORT}:5432 -d pg12

#docker restart $IMAGE_NAME
#docker exec -it $IMAGE_NAME /imdb_setup.sh

MB_SIZE=$1
export LCARD_USER=ubuntu
export LCARD_PORT=5432
export IMAGE_NAME=card-db

sudo docker build --build-arg LCARD_USER=${LCARD_USER} -t pg12 .  
sudo docker run --memory $MB_SIZE --name $IMAGE_NAME -p ${LCARD_PORT}:5432 -d pg12

sudo docker restart $IMAGE_NAME
sudo docker exec -i $IMAGE_NAME /imdb_setup.sh
