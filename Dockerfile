FROM ubuntu:latest

RUN apt-get -qq update
RUN apt-get -y install apache2
RUN apt-get -y install libapache2-mod-wsgi-py3
RUN apt-get -y install python3-pip libapache2-mod-wsgi-py3

COPY gogong.conf /etc/apache2/sites-enabled/
COPY . /var/www/GoGongServer/

RUN /etc/init.d/apache2 start
