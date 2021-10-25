FROM composer:2 as composer

COPY . /code-checker
WORKDIR /code-checker

RUN composer install --ignore-platform-reqs --no-interaction

FROM php:8-cli-alpine

COPY --from=composer /code-checker /code-checker
WORKDIR /code-checker

ENTRYPOINT [ "php", "code-checker" ]