# MariaDB

MariaDB for Prosody or eJabberd with Movim

[![Docker Build Status](https://img.shields.io/docker/build/sfoxdev/mariadb.svg?style=flat-square)]()
[![Docker Build Status](https://img.shields.io/docker/automated/sfoxdev/mariadb.svg?style=flat-square)]()
[![Docker Build Status](https://img.shields.io/docker/pulls/sfoxdev/mariadb.svg?style=flat-square)]()
[![Docker Build Status](https://img.shields.io/docker/stars/sfoxdev/mariadb.svg?style=flat-square)]()

## Usage

### Get image
```
docker pull sfoxdev/mariadb
```

### Run container
```
docker run -d -p 3306:3306 --net=prosody_network --name mariadb -e MARIADB_PASS="a6L1G0V4RnwF" sfoxdev/mariadb:latest
```

### Show logs
```
docker logs mariadb
```

### Get into conatiner
```
docker exec -i -t mariadb /bin/bash
```

### Show all tables from prosody database
```
echo "SELECT * FROM prosody" | mysql -u admin -p prosody
```

### Set up new database for Movim
```
mysql -uroot -e "CREATE USER 'movim'@'%' IDENTIFIED BY 'a6L1Gsd0V4RnwF'"
mysql -uroot -e "CREATE DATABASE movim"
mysql -uroot -e "GRANT ALL PRIVILEGES ON movim.* TO 'movim'@'%' WITH GRANT OPTION"
mysql -uroot -e "FLUSH PRIVILEGES"
```

### Set up new database for eJabberd
```
mysql -uroot -e "CREATE USER 'ejabberd'@'%' IDENTIFIED BY 'a6Lsdf1Gsdsd0V4RnwF'"
mysql -uroot -e "CREATE DATABASE ejabberd"
mysql -uroot -e "GRANT ALL PRIVILEGES ON ejabberd.* TO 'ejabberd'@'%' WITH GRANT OPTION"
mysql -uroot -e "FLUSH PRIVILEGES"
```

### Show eJabberd tables
```
echo "SHOW TABLES;" | mysql -h localhost -D ejabberd -u ejabberd -p --table
```
