FROM php:7.4-fpm-alpine
USER ${UID}:${GID}
WORKDIR /var/www/html
RUN docker-php-ext-install pdo pdo_mysql