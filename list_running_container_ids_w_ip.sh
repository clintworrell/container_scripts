#! /bin/bash
CONTAINER_IDS=$(sudo docker ps --format '{{.ID}}')
for id in $CONTAINER_IDS
do
  IP=$(docker inspect --format '{{.NetworkSettings.IPAddress}}' $id)
  echo "$id - $IP"
done
