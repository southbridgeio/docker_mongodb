FROM mongo:3.4
MAINTAINER admin@southbridge.io

RUN touch /root/.mongodb
RUN set -x && apt-get update && apt-get install -y --no-install-recommends rsync && rm -rf /var/lib/apt/lists/*

COPY southbridge/ /srv/southbridge/.
VOLUME /var/backups

ENV PATH $PATH:/srv/southbridge/bin
