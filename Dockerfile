# VERSION 1.4.2
FROM keboola/base-php56
MAINTAINER Ondrej Vana <ondrej.vana@keboola.com>

WORKDIR /home

# Initialize
RUN echo "memory_limit = -1" >> /etc/php.ini
RUN git clone https://github.com/keboola/generic-extractor.git ./
RUN git checkout tags/0.4.2
RUN composer install --no-interaction

ENTRYPOINT php ./run.php --data=/data
