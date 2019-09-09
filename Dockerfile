FROM composer:1.5
RUN composer create-project topthink/think=5.1.38 tp5  --prefer-dist

FROM sinacloud/docker-apache-php:latest

COPY --from=0 /app/tp5 /tp5
COPY ./docker-entrypoint.sh /

RUN sed -i 's|DocumentRoot /var/www/html|DocumentRoot /var/www/html/public|' /etc/apache2/sites-available/000-default.conf

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["apache2-foreground"]
