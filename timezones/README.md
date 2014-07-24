SQLite Tables for Time Zone Data.

Original .csv file from http://timezonedb.com/download

To create the sqlite file from above get the .sql file included in this repository and follow the directions below

** LINUX **
Requirements: sqlite3, bash, and unzip.

1. Download from the updates link the newest version of the database.
2. From the command line(paths may vary with each distributions).

cd ~
mkdir sql
cd sql
cp ~/Downloads/timezonedb.csv.zip .
unzip timezonedb.csv.zip
sqlite3 tiemzone.db < timezone.sql

== 2014-07-24 ==
v1.0.0          *   Initial files
