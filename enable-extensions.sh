#!/bin/bash

if [[ "$ENABLE_XDEBUG" = true ]]; then
    echo "enable xdebug";
    docker-php-ext-enable xdebug;
fi

if [[ "$INSTALL_MYSQL" = true ]]; then
    echo "install mysql extentions";
    docker-php-ext-install mysqli pdo_mysql;
fi

if [[ "$INSTALL_PGSQL" = true ]]; then
    echo "install pgsql extentions";
    docker-php-ext-install pdo_pgsql;
fi

if [[ -n "$ADDITIONAL_LOCALES" ]]; then
    echo '' >> /usr/share/locale/locale.alias \
    && temp="${ADDITIONAL_LOCALES%\"}" \
    && temp="${temp#\"}" \
    && for i in ${temp}; do sed -i "/$i/s/^#//g" /etc/locale.gen; done \
    && locale-gen;
fi
