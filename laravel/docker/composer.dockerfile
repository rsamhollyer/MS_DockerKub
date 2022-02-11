FROM composer:latest
USER ${UID}:${GID}
WORKDIR /var/www/html
ENTRYPOINT [ "composer","--ignore-platform-reqs" ]