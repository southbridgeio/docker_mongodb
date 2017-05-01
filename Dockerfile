FROM mongo:3.4
MAINTAINER admin@southbridge.io

RUN touch /root/.mongodb
COPY southbridge/ /srv/southbridge/.
VOLUME /var/backups

ENV PATH $PATH:/srv/southbridge/bin
