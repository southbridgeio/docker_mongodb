# docker_mongodb

Docker image with backup script

Backup into /var/backups/mongodb

docker run -v /var/backups/mongodb:/var/backups/mongodb container_name

docker exec container_name mongodb-backup.sh