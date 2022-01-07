FROM php:8-apache

COPY ./apache/apache.conf /etc/apache2/sites-available/000-default.conf
COPY ./app /var/www/html
COPY ./apache/opcache.ini /usr/local/etc/php/conf.d/opcache.ini

RUN docker-php-ext-install pdo_mysql opcache
RUN a2enmod rewrite