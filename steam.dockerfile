FROM php:8.3-fpm
RUN cat /etc/debian_version
RUN apt-get update --allow-insecure-repositories
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN apt-get install libsodium-dev -y
RUN docker-php-ext-install sodium 
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-install exif 
RUN apt-get install zlib1g-dev libzip-dev unzip libpng-dev -y
RUN apt-get install -y libxml2-dev -y
RUN docker-php-ext-install gd 
RUN docker-php-ext-install zip
RUN docker-php-ext-install soap
#RUN apt-get install net-tools htop -y
#RUN touch /etc/apt/sources.list.d/nodesource.list \
#    && echo "deb-src [trusted=yes] https://deb.nodesource.com/node_18.x bullseye main" > /etc/apt/sources.list.d/nodesource.list \
#    && apt update \
#    && apt-get install nodejs -y
RUN apt install supervisor -y
RUN mkdir -p /usr/src/php/ext/
RUN curl -L -o /tmp/redis.tar.gz https://github.com/phpredis/phpredis/archive/5.3.7.tar.gz \
    && tar xfz /tmp/redis.tar.gz \
    && rm -r /tmp/redis.tar.gz \
    && mv phpredis-5.3.7 /usr/src/php/ext/redis \
    && docker-php-ext-install redis
COPY ./start.sh /start.sh
RUN docker-php-ext-install pcntl
#RUN apt install host -y
RUN docker-php-ext-install bcmath
EXPOSE 9000
CMD ["php-fpm"]
