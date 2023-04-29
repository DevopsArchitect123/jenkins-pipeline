FROM centos:7

RUN yum install httpd -y

RUN service httpd start

WORKDIR /var/www/html

COPY /music/* /var/www/html/

EXPOSE 8090



