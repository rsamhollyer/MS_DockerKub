FROM php:7.4-fpm-alpine
USER 1000:1000
WORKDIR /var/www/html
RUN docker-php-ext-install pdo pdo_mysql