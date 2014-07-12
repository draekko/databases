<?php
$db = new SQLite3('countries.db');

$cc = 'US';

$results = $db->query("SELECT * FROM countries WHERE code = '" . $cc . "';");
if (!$results) {
    echo 'ITS DEAD JIM!';
    die('');
}

$row = $results->fetchArray(SQLITE3_ASSOC);
print "Country is " .$row['name'];

$db->close();

?>
