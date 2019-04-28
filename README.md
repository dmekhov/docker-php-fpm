# docker-php-fpm

[php-fpm](https://github.com/docker-library/php/blob/master/7.3/stretch/fpm/Dockerfile) based docker image 
prefer for laravel project, but can use with another.

default php version: 7.3

You are can rebuild locally and change version by using `PHP_VERSION` argument.

## Custom extensions

(set by args for local build)

INSTALL_XDEBUG=true  
INSTALL_PHPREDIS=true  
INSTALL_PCNTL=true  
INSTALL_EXIF=true  
INSTALL_OPCACHE=true  
INSTALL_MYSQL=true  
INSTALL_PGSQL=true  
INSTALL_INTL=true  
INSTALL_IMAGE_OPTIMIZERS=true  
INSTALL_IMAGEMAGICK=true  
INSTALL_ADDITIONAL_LOCALES=true  

## Enabling extensions

(set by env)

ENABLE_XDEBUG=false  
INSTALL_MYSQL=false  
INSTALL_PGSQL=false  
ADDITIONAL_LOCALES=  
