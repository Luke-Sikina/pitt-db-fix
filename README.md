# pitt-db-fix

1. Dump the database
	```bash
	docker exec -ti picsure-db bash
	mysqldump -uroot -p$MYSQL_ROOT_PASSWORD auth > auth.sql
	exit
	docker cp picsure-db/auth.sql .
	```
2. Edit the dump to exclude the user table
	```bash
	vi auth.sql
	```
3. Zip the dump, email
	```bash
	tar -czf auth.tar.gz auth.sql
	```
4. Load the new dump from GH
	```
	curl -o auth_fix.sql https://raw.githubusercontent.com/Luke-Sikina/pitt-db-fix/main/auth_fix.sql
	docker cp auth_fix.sql picsure-db:/
	docker exec -ti picsure-db bash
	mysql -uroot -p$MYSQL_ROOT_PASSWORD auth < auth_fix.sql
	exit
	```
5. Start picsure

