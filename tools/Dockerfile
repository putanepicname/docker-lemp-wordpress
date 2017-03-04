FROM php:7.1-fpm

RUN apt-get update \
    && apt-get install -y python-minimal git-core curl --no-install-recommends \
    && echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' >> /etc/apt/sources.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 \
    && apt-get update && apt-get install -y ansible \
    && cd /tmp && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar && mv wp-cli.phar /usr/bin/wp \
    && rm -r /var/lib/apt/lists/*

