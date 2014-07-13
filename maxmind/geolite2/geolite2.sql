
DROP TABLE IF EXISTS locations;
CREATE TABLE IF NOT EXISTS locations (
    geoname_id integer, 
    code_continent text,
    continent_name text,
    country_iso_code text,
    country_name text,
    subdivision_iso_code text,
    subdivision_name text,
    city_name text,
    metro_code text,
    time_zone text);
.separator ","
.import GeoLite2-Country-Locations.csv locations

DROP TABLE IF EXISTS blocks;
CREATE TABLE IF NOT EXISTS blocks (
    network_start_ip integer,
    network_mask_length text,
    geoname_id integer,
    registered_country_geoname_id integer,
    represented_country_geoname_id integer,
    postal_code text,
    latitude real,
    longitude real,
    is_anonymous_proxy integer,
    is_satellite_provider integer);
.import GeoLite2-Country-Blocks-IPv4.csv blocks


