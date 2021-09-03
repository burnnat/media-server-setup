FROM ubuntu:bionic

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
  apt-get install -y software-properties-common && \
  add-apt-repository -y ppa:mythbuntu/30 && \
  apt-get install -y \
    libmythtv-perl \
    libhttp-message-perl \
    libwww-perl \
    libxml-simple-perl \
    cron \
    wget

RUN wget -O /root/mythlink.pl https://raw.githubusercontent.com/MythTV/mythtv/master/mythtv/contrib/user_jobs/mythlink.pl && \
  chmod +x /root/mythlink.pl

COPY mythlink-plex.sh /root/mythlink-plex.sh
COPY crontab.txt /etc/cron.d/mythlink-plex

RUN chmod 0644 /etc/cron.d/mythlink-plex && \
  crontab /etc/cron.d/mythlink-plex && \
  touch /var/log/cron.log

CMD cron && tail -f /var/log/cron.log
