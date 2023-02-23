

## start db

```
docker run -d \
  --name mydb \
  -v vipdb:/var/lib/mysql \
  -v $PWD/sql:/docker-entrypoint-initdb.d \
  -e MARIADB_ROOT_PASSWORD=secret  \
  mariadb

```

list DB

```
docker exec mydb \
  bash -c 'mariadb -psecret mysql <<< "select * from VIP;"'
```

## docker-compose

start dev env:
```
docker-compose up -d --build
```

start QA env:
```
docker-compose --env-file .env.qa up -d --build
```