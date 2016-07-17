FROM ubuntu:latest

RUN apt-get -qq update
RUN apt-get -y install apache2 apache2-doc apache2-utils
RUN apt-get install -y python3-pip apache2 libapache2-mod-wsgi-py3
RUN pip3 install --upgrade pip
RUN apt-get install -y vim

EXPOSE 80:80

COPY gogong.conf /var/www
COPY . /var/www/GoGongServer
RUN /etc/init.d/apache2 start


CMD /bin/bash
