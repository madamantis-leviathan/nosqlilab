FROM --platform=linux/amd64 php:7.0-apache
MAINTAINER jose nazario <jose@monkey.org>
LABEL version="1.0" description="nosqli-labs Docker image"

COPY sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y gnupg wget apt-transport-https ca-certificates
RUN	apt-get -qq update
RUN apt-get install -y libssl-dev unzip

RUN pecl channel-update pecl.php.net
RUN pecl install mongodb-1.8.0
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer	
RUN docker-php-ext-enable mongodb
RUN apt-get -qy autoremove
RUN apt-get clean
RUN mkdir -p /data/db
COPY . /var/www/html
RUN sed -i s/"localhost:27017"/"mongo:27017"/g /var/www/html/user_lookup.php
RUN sed -i s/"localhost:27017"/"mongo:27017"/g /var/www/html/populate_db.php
RUN sed -i s/"localhost:27017"/"mongo:27017"/g /var/www/html/guess_the_key.php
