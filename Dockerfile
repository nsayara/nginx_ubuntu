FROM ubuntu:latest
MAINTAINER Nihat Sayar <nihat_sayar@yahoo.com>
# RUN apt-get update
RUN apt-get -y update && apt-get -y install nginx
ADD [ "./index.html", "/var/www/html/" ]
EXPOSE 80
EXPOSE 443
ENTRYPOINT nginx -g 'daemon off;'
