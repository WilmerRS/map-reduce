#!/bin/bash
FOLDER="color-counter"

docker exec hadoop-master mkdir $FOLDER

docker cp ../../map-reduce-unparallelized/dataset.csv hadoop-master:/root/$FOLDER
docker cp ../../map-reduce-unparallelized/mapper.py hadoop-master:/root/$FOLDER
docker cp ../../map-reduce-unparallelized/reducer.py hadoop-master:/root/$FOLDER

docker cp ./start.sh hadoop-master:/root/$FOLDER