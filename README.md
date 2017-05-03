# docker_mongodb

Docker image with backup script

Backup into /var/backups/mongodb

docker run -v /var/backups/mongodb:/var/backups/mongodb container_name
docker exec container_name mongodb-backup.sh

Parameters for backup can set via enviroment variables:

# Host name (or IP address) of MySQL server e.g localhost
MONGO_BACKUP_DBHOST=localhost

#daemon port
MONGO_BACKUP_DBPORT="27017"

# Backup directory location e.g /backups
MONGO_BACKUP_BACKUPDIR="/var/backups/mongodb"

# Collections name list to include e.g. system.profile users
# DBNAME is required
# Unecessary if backup all collections
MONGO_BACKUP_COLLECTIONS=""

# Collections to exclude e.g. system.profile users
# DBNAME is required
# Unecessary if backup all collections
MONGO_BACKUP_EXCLUDE_COLLECTIONS=""

# Username to access the mongo server e.g. dbuser
# Unnecessary if authentication is off
MONGO_BACKUP_DBUSERNAME=""

# Password to access the mongo server e.g. password
# Unnecessary if authentication is off
MONGO_BACKUP_DBPASSWORD=""

# Database for authentication to the mongo server e.g. admin
# Unnecessary if authentication is off
MONGO_BACKUP_DBAUTHDB=""

# Backup data from secondary replica set
MONGO_BACKUP_REPLICAONSLAVE=yes

# Backup data from secondary replica set connected local
MONGO_BACKUP_LOCAL_REPLICAONSLAVE=yes

# Nice running level
MONGO_BACKUP_NICE=20

# Mail setup
# What would you like to be mailed to you?
# - log   : send only log file
# - files : send log file and sql files as attachments (see docs)
# - stdout : will simply output the log to the screen if run manually.
# - quiet : Only send logs if an error occurs to the MAILADDR.
MONGO_BACKUP_MAILCONTENT="stdoutt"

# Email Address to send mail to? (user@domain.com)
MONGO_BACKUP_MAILADDR="root"

# Which day do you want weekly backups? (1 to 7 where 1 is Monday)
MONGO_BACKUP_DOWEEKLY=6

# How many month keep backups
MONGO_BACKUP_BACKUP_MONTH=4

# How many weeks keep backups
MONGO_BACKUP_BACKUP_WEEKS=4

# How many days keep backups
MONGO_BACKUP_BACKUP_DAYS=5

# Choose Compression type. (gzip or bzip2)
MONGO_BACKUP_COMP="gzip"

# Choose if the uncompressed folder should be deleted after compression has completed
MONGO_BACKUP_CLEANUP="yes"

#параметры для хот бэкапа
MONGO_BACKUP_DO_HOT_BACKUP=no
#в случае изменения этой переменной необходимо внести соответствующие изменения в файл etc/mongo-backup.js !!!
MONGO_BACKUP_HOTBACKUPDIR="/var/backups/mongodb/hot"
