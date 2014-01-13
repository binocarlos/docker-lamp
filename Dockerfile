FROM ubuntu:12.04

# Update package repository
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe multiverse" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install apache2
RUN apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql
RUN mysql_install_db
RUN apt-get install php5 libapache2-mod-php5 php5-mcrypt