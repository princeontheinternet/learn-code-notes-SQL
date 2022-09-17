# How to install mysql in Ubuntu?

* `$ sudo apt update` _- update all the packages and their dependencies._ 
* `$ sudo apt install mysql-server`  _- installs mysql-server_ 
* `$ mysql --version` _- tells version_
* `$ sudo mysql_secure_installation` _- improve the security of your MySQL installation by setting password for root a/c_
* `$ sudo mysql` _- goes into mysql mode/monitor_
* `$ show databases;` _- shows all databases_
* `$ select user, authentication_string,plugin from mysql.user;`
* `$ ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password by '45683968';`
* `$ FLUSH PRIVILEGES;`
* `$ sudo mysql -u root -p` _- asks for password for user root_