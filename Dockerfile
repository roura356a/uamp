FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y apache2
# TODO: ADD /etc/apache2/apache2.conf

RUN ufw allow in "Apache Full"

RUN apt-get install mysql-server
# TODO: Automate RUN mysql_secure_installation

RUN apt-get install php libapache2-mod-php php-mcrypt php-mysql
# TODO: Some PHP modules maybe?

RUN systemctl restart apache2

EXPOSE 80 443 3306
