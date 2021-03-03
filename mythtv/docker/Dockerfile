FROM sammonsjl/mythtv:30-fixes

RUN wget -O /usr/share/doc/mythtv-backend/contrib/user_jobs/mythlink.pl https://raw.githubusercontent.com/MythTV/mythtv/master/mythtv/contrib/user_jobs/mythlink.pl \
  && chmod +x /usr/share/doc/mythtv-backend/contrib/user_jobs/mythlink.pl

COPY mythlink-plex.sh /usr/share/doc/mythtv-backend/contrib/user_jobs/
COPY crontab.txt /etc/cron.d/mythlink-plex
RUN chmod 0644 /etc/cron.d/mythlink-plex
RUN crontab /etc/cron.d/mythlink-plex
RUN touch /var/log/cron.log
RUN service cron start
