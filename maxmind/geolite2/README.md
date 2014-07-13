SQLite Tables for IP Data and Related Contient Names, Countries Names, and Their ISO-3166 Codes.

Original .csv file from http://dev.maxmind.com/geoip/geoip2/geolite2/

To create the sqlite file from above get the .sql file included in this repository and follow the directions below

** LINUX **
Requirements: sqlite3, bash, cut, sed, and unzip.

1. Download from the updates link the newest version of the database.
2. From the command line(paths may vary with each distributions).

cd ~
mkdir sql
cd sql
cp ~/Downloads/geolite2.sql .
cp ~/Downloads/GeoLite2-Country-CSV.zip .
unzip GeoLite2-Country-CSV.zip
bash fixdb.sh GeoLite2-Country-Blocks.csv GeoLite2-Country-Blocks-IPv4.csv
sqlite3 geolite2.db < geolite2.sql

== 2014-07-12 ==
v1.0.0          *   Initial files
