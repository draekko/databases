SQLite Tables for Contient Names, Countries Names, and Their ISO-3166 Codes.

Original MySQL file from http://www.geekality.net/2011/08/21/country-names-continent-names-and-iso-3166-codes-for-mysql/
Updates of MySQL File found on https://bitbucket.org/svish/iso-3166-country-codes

To create the sqlite file from above get the .diff file included in this repository and follow the directions below

** LINUX **
Requirements: sqlite3, diff, patch, and unzip.

1. Download  from the updates link the newest version of the database.
2. From the command line(paths may vary with each distributions).

cd ~
mkdir sql
cd sql
cp ~/Downloads/ip2nation.zip .
unzip ip2nation.zip
patch -p 0 < ip2nation.diff
sqlite3 ip2nation.db < ip2nation.sql

== 2014-07-12 ==
v1.0.0          *   Initial files
