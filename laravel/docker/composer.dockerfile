FROM composer:latest
USER 1000:1000
WORKDIR /var/www/html
ENTRYPOINT [ "composer","--ignore-platform-reqs" ]