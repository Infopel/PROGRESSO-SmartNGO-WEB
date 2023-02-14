<?php
	$dbhost = 'localhost';
	$dbpass = 'webserver';
	$dbuser = 'root';
	$dbname = 'database_uem';


	$con = mysqli_connect($dbhost, $dbuser, $dbpass)or die(mysql_error());
	mysql_select_db($dbname, $con)or die("Nao foi possivel connectar-se a base de dados");
?>