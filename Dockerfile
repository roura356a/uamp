FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y apache2

RUN ufw allow in "Apache Full"

RUN apt-get install mysql-server

RUN apt-get install php libapache2-mod-php php-mcrypt php-mysql

RUN systemctl restart apache2

EXPOSE 80 443 3306
