<?php
$dbhost = 'localhost';
$dbname = 'clscompu_clsrepair';
$dbuser = 'clscompu_repair';
$dbpass = '~~clsrepair~~';

try {
	$db = new PDO("mysql:host={$dbhost};dbname={$dbname}",$dbuser,$dbpass);
	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}

catch(PDOException $e) {
	echo "Connection error: ".$e->getMessage();
}
?>