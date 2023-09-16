#!/bin/sh
# Setup MythTV connection info (force TCP connection for Docker by using 127.0.0.1)
mkdir -p /root/.mythtv
sed "s/localhost/127.0.0.1/g" /etc/mythtv/config.xml > /root/.mythtv/config.xml

# Setup storage directory
rm -r /storage/tv/shows
mkdir /storage/tv/shows

# Copy episode-based shows
/root/mythlink.pl --link /storage/tv/temp --format "%Ct/S%ss/%T/Season %ss/%T - S%ssE%ep - %S [%c %Y%m%d%H%i%s]" --separator "#"
rm -r /storage/tv/temp/2/S
cp -r /storage/tv/temp/2/*/* /storage/tv/shows
rm -r /storage/tv/temp

# Copy date-based shows
/root/mythlink.pl --link /storage/tv/temp --format "%Ct/S%ss/%T/Season %oY/%T - %oY-%om-%od - %S [%c %Y%m%d%H%i%s]" --separator "#"
cp -r /storage/tv/temp/2/S/* /storage/tv/shows
rm -r /storage/tv/temp

# Copy TV movies
/root/mythlink.pl --link /storage/tv/temp --format "%Ct/%T/%T - [%c %Y%m%d%H%i%s]"
rm -r /storage/tv/movies
mv /storage/tv/temp/1 /storage/tv/movies
rm -r /storage/tv/temp
