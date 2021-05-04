#!/bin/bash
USER=widiastono
GROUP=widiastono

USERID=`id -u $USER`
GROUPID=`id -g $GROUP`

### Source File sudah ada di repo
### Source Application
#mkdir src

### install dependencies laravel
#cd src

#docker run -u $USERID:$GROUPID --rm -v $(pwd):/app composer create-project --prefer-dist laravel/laravel projects
#cp -rpv projects/.* .

#rm -rf projects

#docker-compose up --build -d 
docker-compose up -d 

#cp .env.example .env

docker-compose exec -u $USERID:$GROUPID app php artisan key:generate
docker-compose exec -u $USERID:$GROUPID app php artisan config:cache
