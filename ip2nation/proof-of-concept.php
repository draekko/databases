<?php
$db_i2n = new SQLite3('ip2nation.sqlite');

// Vietnam
//$ip = ip2long("14.246.240.23");

// USA
$ip = ip2long("215.246.240.23");

$query = "SELECT c.country, c.code FROM ip2nationCountries c, ip2nation i WHERE i.ip < '".$ip."' AND c.code = i.country ORDER BY i.ip DESC LIMIT 0,1";
$results_cnt = $db_i2n->query($query);
$row = $results_cnt->fetchArray(SQLITE3_ASSOC);
print "Country is ". $row['country'];
$db_i2n->close();
?>
