FROM ubuntu:latest

#install required server components
RUN apt-get -qq update
RUN apt-get -y install apache2
RUN apt-get -y install libapache2-mod-wsgi-py3
RUN apt-get -y install python3-pip libapache2-mod-wsgi-py3

#copy project and apache conf
COPY gogong.conf /etc/apache2/sites-enabled/
COPY . /var/www/GoGongServer/

#install python packages
WORKDIR "/var/www/GoGongServer/"
RUN pip3 install -r requirements.txt


