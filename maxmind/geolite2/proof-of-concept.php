<?php
$db_geolite2 = new SQLite3('geolite2.db');

// Vietnam
//$ip = ip2long("14.246.240.23");

// USA
$ip = ip2long("215.246.240.23");

$query = "SELECT c.country_name, c.geoname_id FROM locations c, blocks i WHERE i.network_start_ip < '".$ip."' AND c.geoname_id = i.geoname_id ORDER BY i.network_start_ip DESC LIMIT 0,1";
$results_cnt = $db_geolite2->query($query);
$row = $results_cnt->fetchArray(SQLITE3_ASSOC);
print "Country is ". $row['country_name'];
$db_geolite2->close();
?>
