FROM php:7.4-fpm-alpine3.15

RUN apk add --update --no-cache bash

ADD https://github.com/mlocati/docker-php-extension-installer/releases/download/1.5.33/install-php-extensions /usr/local/bin/

ENV IPE_GD_WITHOUTAVIF=1

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions \
    @composer-2.0.9 \
    pdo_mysql \
    gd \
    xdebug-3.1.5 \
    zip

RUN adduser -D laravel && addgroup laravel www-data

USER laravel

ENV PATH=/var/www/html/vendor/bin:$PATH
