#sudo docker build --build-arg LCARD_USER -t pg12 .
#IMAGE_NAME=card-db
#sudo docker build --build-arg LCARD_USER=${LCARD_USER} -t pg12 .
#sudo docker run --name $IMAGE_NAME -p ${LCARD_PORT}:5432 -d pg12

#docker restart $IMAGE_NAME
#docker exec -it $IMAGE_NAME /imdb_setup.sh

MBSIZE=$1
export LCARD_USER=ubuntu
export LCARD_PORT=5433
export IMAGE_NAME=card-db

sudo docker build --build-arg LCARD_USER=${LCARD_USER} -t pg12 .  

if [ $MBSIZE == "-1" ]
then
  sudo docker run --name $IMAGE_NAME -p ${LCARD_PORT}:5432 -d pg12
else
  sudo docker run --memory $MBSIZE --name $IMAGE_NAME -p ${LCARD_PORT}:5432 -d pg12
fi

sudo docker restart $IMAGE_NAME
sudo docker exec -i $IMAGE_NAME /stack_setup.sh
