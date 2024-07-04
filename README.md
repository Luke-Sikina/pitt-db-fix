# pitt-db-fix

1. Dump the database
	```bash
	docker exec -ti picsure-db bash
	mysqldump -uroot -p$MYSQL_ROOT_PASSWORD auth > auth.sql
	exit
	docker cp picsure-db:/auth.sql .
	```
2. Edit the dump to exclude the user table and application table
	```bash
	vi auth.sql
	```
3. Zip the dump, email
	```bash
	tar -czf auth.tar.gz auth.sql
	```
4. Load the new dump from GH
	```
	docker cp auth_fix.sql picsure-db:/
	docker exec -ti picsure-db bash
	mysql -uroot -p$MYSQL_ROOT_PASSWORD auth < auth_fix.sql
	exit
	```
5. Fix things
	```
	UPDATE user SET connectionId = (SELECT uuid from connection where id = 'manual-token') where email = 'CommonAreaUser';
	select uuid from picsure.resource where name = 'PIC-SURE Aggregate Resource';
	select value from access_rule;
	UPDATE access_rule set value = 'd1ab8c9f-65e4-48c6-a9f7-c185830330de' where value = 'd928da86-450b-4ee4-9b68-c1472b2fed23';
	```
6. Start picsure

