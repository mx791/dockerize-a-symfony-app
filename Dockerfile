FROM php:7.4-apache

COPY ./apache/apache.conf /etc/apache2/sites-available/000-default.conf
COPY ./app /var/www/html
COPY ./apache/opcache.ini /usr/local/etc/php/conf.d/opcache.ini

COPY --from=composer /usr/bin/composer /usr/local/bin/composer
WORKDIR /var/www/html
RUN composer install

RUN docker-php-ext-install pdo_mysql opcache
RUN a2enmod rewrite

RUN chown -Rf www-data /var/www/html