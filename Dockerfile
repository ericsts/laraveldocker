FROM php:7.3.6-fpm-alpine3.9
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN apk add --no-cache bash mysql-client
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www
RUN rm -rf /var/www/html

RUN ln -s public html

##RUN chmod -R 775 /var/www/storage
###RUN chmod -R 775 /var/www/storage

EXPOSE 9000
ENTRYPOINT ["php-fpm"]