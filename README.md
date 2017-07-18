Get image:
docker pull sfoxdev/mariadb

Run container:
docker run -d -p 3306:3306 --net=prosody_network --name mariadb -e MARIADB_PASS="a6L1G0V4RnwF" sfoxdev/mariadb:latest

Show logs:
docker logs <CONTAINER_ID>

Get into conatiner:
docker exec -i -t mariadb /bin/bash

Show all tables from prosody database:
echo "SELECT * FROM prosody" | mysql -u admin -p prosody

Set up new database:
mysql -uroot -e "CREATE USER 'movim'@'%' IDENTIFIED BY 'a6L1Gsd0V4RnwF'"
mysql -uroot -e "CREATE DATABASE movim"
mysql -uroot -e "GRANT ALL PRIVILEGES ON movim.* TO 'movim'@'%' WITH GRANT OPTION"
mysql -uroot -e "FLUSH PRIVILEGES"

