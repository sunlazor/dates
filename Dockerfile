FROM ghcr.io/roadrunner-server/roadrunner:2025.1 AS roadrunner
FROM php:8.4-cli

COPY --from=roadrunner /usr/bin/rr /usr/local/bin/rr
COPY --from=composer:lts /usr/bin/composer /usr/bin/composer
COPY --from=ghcr.io/mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions sockets

WORKDIR /app

CMD ["/bin/sh", "-c", "rr serve -c .rr.yaml"]