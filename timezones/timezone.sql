DROP TABLE IF EXISTS zone;
CREATE TABLE zone (
    zone_id INTEGER PRIMARY KEY NOT NULL,
    country_code TEXT NOT NULL,
    zone_name TEXT NOT NULL
);
.separator ","
.import zone.csv zone

DROP TABLE IF EXISTS timezone;
CREATE TABLE timezone (
    zone_id INTEGER NOT NULL,
    abbreviation TEXT NOT NULL,
    time_start INTEGER NOT NULL,
    gmt_offset INTEGER NOT NULL,
    dst TEXT NOT NULL
);
.separator ","
.import timezone.csv timezone

DROP TABLE IF EXISTS country;
CREATE TABLE country (
    country_code TEXT NULL,
    country_name TEXT NULL
);
.separator ","
.import country.csv country

