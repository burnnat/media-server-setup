#!/bin/sh
rm -r /storage/tv/shows
mkdir /storage/tv/shows
/usr/share/doc/mythtv-backend/contrib/user_jobs/mythlink.pl --link /storage/tv/temp --format "%Ct/S%ss/%T/Season %ss/%T - S%ssE%ep - %S" --separator "#"
rm -r /storage/tv/temp/2/S
cp -r /storage/tv/temp/2/*/* /storage/tv/shows
rm -r /storage/tv/temp
/usr/share/doc/mythtv-backend/contrib/user_jobs/mythlink.pl --link /storage/tv/temp --format "%Ct/S%ss/%T/Season %oY/%T - %oY-%om-%od - %S" --separator "#"
cp -r /storage/tv/temp/2/S/* /storage/tv/shows
rm -r /storage/tv/temp
/usr/share/doc/mythtv-backend/contrib/user_jobs/mythlink.pl --link /storage/tv/temp --format "%Ct/%T/%T"
rm -r /storage/tv/movies
mv /storage/tv/temp/1 /storage/tv/movies
rm -r /storage/tv/temp
