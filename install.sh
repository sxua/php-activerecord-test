#!/bin/bash
function check_dbs {
	for DATABASE in $DATABASES; do
		if [ "$DATABASE" = "$MYSQL_DB" ]; then
			echo '*ERROR* This database is already exists. Try other name:'
			read MYSQL_DB
			check_dbs
		fi
	done
}

echo 'Installing script...'
echo --------------------------------------------------------------------------
echo 'Please, enter your MySQL credentials:'
echo --------------------------------------------------------------------------
echo 'Host:'
read MYSQL_HOST
echo 'User:'
read MYSQL_USER
echo 'New database name:'
read MYSQL_DB
echo 'Password:'
read MYSQL_PASS

DATABASES=`mysql -h$MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASS -se "show databases;" | egrep -v "information_schema|mysql"`
check_dbs
mysqladmin -h$MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASS create $MYSQL_DB
echo "Database ${MYSQL_DB} was successfully created."
echo 'Uploading dump...'
mysql -h$MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASS $MYSQL_DB < db.sql && echo 'Dump was successfully uploaded to your database.'
echo 'Creating config.php...'
cat config.tmp > config.php && rm -f config.tmp && echo 'Created.'
echo 'Now you can run the script.'
