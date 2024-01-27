FROM wordpress:latest

RUN apt-get update && apt-get install -y libxml2 libxml2-dev

# Install PHP Soap Extention
RUN docker-php-ext-install soap
RUN docker-php-ext-install pdo pdo_mysql
