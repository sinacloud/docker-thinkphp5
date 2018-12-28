FROM composer:1.5
RUN composer create-project topthink/think=5.1.27 tp5  --prefer-dist

FROM sinacloud/docker-apache-php:latest

COPY --from=0 /app/tp5 /tp5
COPY ./docker-entrypoint.sh /

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["apache2-foreground"]
