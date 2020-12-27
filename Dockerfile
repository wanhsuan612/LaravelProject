# Dockerfile 用來定義自己的 image

# php
FROM php:7.4-fpm
RUN apt-get update \
    && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql
    
# # install redis
# RUN pecl install redis-6.0 \
#     && docker-php-ext-enable redis

# # install npm
# RUN apt-get install -y npm

# # insatll composer
# RUN curl -sS https://getcomposer.org/installer | php
# RUN mv composer.phar /usr/local/bin/composer

# # Copy Laravel app to Container
# COPY . .

# # composer install
# RUN composer install \
#         --ignore-platform-reqs \
#         --no-interaction \
#         --no-plugins \
#         --no-scripts \
#         --prefer-dist

# # Npm install and Compile
# RUN npm install \
#         && npm run production
