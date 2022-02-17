#!/bin/bash

mkdir -p data
mkdir -p mysql-files
mkdir -p climateFiles

USER='root'
NAME="climate"
MYSQL_UID="$(id -u ${USER})"	# Users UID
MYSQL_GID="$(id -g ${USER})" # Users GID
MYSQLPASS="abdullahim123"
#WWW="/media/df926ae2-fef9-4ab3-ae5e-35d72f10131d/Dropbox/PhD/Reboot/Projects/Website"
MYSQLDATA="/mnt/c/Users/abdul/CSDrive/mrsharky/process/Docker/data"
MYSQLFILES="/mnt/c/Users/abdul/CSDrive/mrsharky/process/Docker/mysql-files"
FILES="/mnt/c/Users/abdul/CSDrive/mrsharky/process/Docker/climateFiles"
# GODAS="/mnt/c/Users/abdul/CSDrive/mrsharky/process/Docker/godas"
GODAS="/mnt/c/Users/abdul/CSDrive/godas"

# MYSQLDATA="/mnt/SnapDisk_2TB_02/climate/data"
# MYSQLFILES="/mnt/SnapDisk_2TB_02/climate/mysql-files"
# FILES="/mnt/SnapDisk_2TB_02/climate/climateFiles"


IMAGE="jpierret/climate"
MYSQLUSERNAME="root"





echo $MYSQL_UID $MYSQL_GID

#mkdir -p $CONFIG > /dev/null 2>&1
#mkdir -p $FILES > /dev/null 2>&1

#--privileged=true \
#--restart=always \
#-v $MYSQLDATA:/var/lib/mysql \
# --net=\"host\" \
#-v $WWW:/var/www/html \

sudo docker run \
-p 12306:3306 \
-p 12080:80 \
-p 12443:443 \
--name=${NAME} \
-e MYSQL_UID=${MYSQL_UID} \
-e MYSQL_GID=${MYSQL_GID} \
-e MYSQLPASS=${MYSQLPASS} \
-v ${MYSQLDATA}:/var/lib/mysql \
-v ${MYSQLFILES}:/var/lib/mysql-files \
-v ${FILES}:/climateFiles \
-v /etc/localtime:/etc/localtime:ro \
-v /mnt/c/Users/abdul/CSDrive/godas/thflx.nc:/climateFiles/thflx.nc \
-i ${IMAGE}