FROM php:7.3.6-fpm-alpine3.9

WORKDIR /var/www
RUN rm -rf /var/www/html

RUN ln -s public html

##RUN chmod -R 775 /var/www/storage
###RUN chmod -R 775 /var/www/storage

EXPOSE 9000
ENTRYPOINT ["php-fpm"]