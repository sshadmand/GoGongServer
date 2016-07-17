FROM ubuntu:latest

RUN apt-get -qq update
RUN apt-get -y install apache2 apache2-doc apache2-utils
RUN apt-get -y install git-core
RUN apt-get install -y python3-pip apache2 libapache2-mod-wsgi-py3
RUN pip3 install --upgrade pip
RUN apt-get install -y vim

EXPOSE 80:80

RUN git clone git clone https://github.com/sshadmand/GoGongServer.git /var/www
COPY gogong.conf /var/www

RUN /etc/init.d/apache2 start


CMD /bin/bash
