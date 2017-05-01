FROM mongo:3.4
MAINTAINER admin@southbridge.io

COPY southbridge/ /srv/southbridge/.
VOLUME /var/backups

ENV PATH $PATH:/srv/southbridge/bin
