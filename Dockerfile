FROM wordpress

RUN apt update && apt install -y libxml2-dev && rm -rf /var/lib/apt/lists/*
# RUN apt update && apt install -y libxml2-dev git && rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-install soap

# Install XDebug from source as described here:
# https://xdebug.org/docs/install
# Available branches of XDebug could be seen here:
# https://github.com/xdebug/xdebug/branches
# RUN cd /tmp && \
#     git clone https://github.com/xdebug/xdebug.git && \
#     cd xdebug && \
#     git checkout xdebug_3_2 && \
#     phpize && \
#     ./configure --enable-xdebug && \
#     make && \
#     make install && \
#     rm -rf /tmp/xdebug
# RUN docker-php-ext-enable xdebug
# COPY docker-resources/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

# Needed for migration
COPY docker-resources/php-custom.ini /usr/local/etc/php/conf.d/custom.ini
COPY docker-resources/apache-custom.conf /etc/apache2/conf-enabled/custom.conf