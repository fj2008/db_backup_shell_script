#!/bin/sh
DATE=`date +%Y%m%d%H%M`
BACKUP_DIR="/backup/"
echo "=====================start backup========================="
/usr/bin/mysqldump --login-path=dba -e --all-databases > ${BACKUP_DIR}mysql_db_bak_${DATE}.sql

echo "ssh start"
service ssh start
echo "ssh start success"
echo "sftp connect nas"

SFTP_IP=""
USER="user"
PASSWORD="password"
DIR="put dir"
expect << EOF
spawn sftp ${USER}@${SFTP_IP}
expect "password:" { send "${PASSWORD}\r"}
expect "sftp>" { send "cd ${DIR} \r"}
expect "sftp>" { send "put ${BACKUP_DIR}mysql_db_bak_${DATE}.sql \r"}
expect "sftp>" { send "quit \r"}
expect eof
EOF
echo "sftp success"
