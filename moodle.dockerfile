FROM php:7.3-fpm-buster

WORKDIR /www

RUN apt-get update

RUN apt-get install -y zip libzip-dev
RUN docker-php-ext-configure zip --with-libzip
RUN docker-php-ext-install zip

RUN apt-get install -y libpq-dev
RUN docker-php-ext-install pdo
RUN docker-php-ext-install pgsql
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install pdo_pgsql

RUN apt-get install -y libpng-dev
RUN docker-php-ext-install gd

RUN apt-get install -y libicu-dev
RUN docker-php-ext-install intl

RUN apt-get install -y libxml2-dev
RUN docker-php-ext-install xmlrpc
RUN docker-php-ext-install soap

RUN docker-php-ext-install opcache