FROM php:7.4-apache
WORKDIR /var/www/html
COPY index.php composer.json ./
RUN apt-get update && apt-get install -y curl zip unzip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer install
EXPOSE 80