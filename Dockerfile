FROM php:7.4-apache
WORKDIR /var/www/html
COPY index.php ./
RUN apt-get update && apt-get install -y curl zip unzip
EXPOSE 80