# VERSION 1.1.3
FROM keboola/base-php55
MAINTAINER Ondrej Vana <ondrej.vana@keboola.com>

WORKDIR /home

# Initialize
RUN git clone https://github.com/keboola/generic-extractor.git ./
RUN git checkout tags/0.0.13
RUN composer install --no-interaction

ENTRYPOINT php ./run.php --data=/data
