# se https://github.com/ucan-lab/docker-laravel5/blob/master/docker/php/Dockerfile
FROM php:8.0-fpm

ARG PSYSH_DIR=/usr/local/share/psysh
ARG PHP_MANUAL_URL=http://psysh.org/manual/ja/php_manual.sqlite

WORKDIR /var/www/html

ARG TZ=Asia/Tokyo

RUN apt-get update -y && apt-get upgrade -y\
  && apt-get install -y zlib1g-dev mariadb-client vim libzip-dev \
  && docker-php-ext-install zip pdo_mysql

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
