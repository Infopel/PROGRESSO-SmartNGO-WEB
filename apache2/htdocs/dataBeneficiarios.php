<?php
ini_set('display_errors', 1);

$servername = "127.0.0.1";
$username = "root";
$password = "Eureka001";
$db="bitnami_redmine";
$conn = new mysqli($servername, $username, $password,$db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
//echo "Connected successfully<br/>";

	$sql = "SELECT p.id, p.name AS nomeProj, ch.value AS beneficiariosH, cm.value AS beneficiariosM
	from projects AS p
	LEFT JOIN custom_values AS cm ON (cm.custom_field_id=39 AND cm.customized_id=p.id)
	LEFT JOIN custom_values AS ch ON (ch.custom_field_id=38 AND ch.customized_id=p.id)
	WHERE p.id > 16 Order by p.id ASC";
	
    $results=mysqli_query($conn, $sql);
	$data = array();
    foreach ($results as $row) {
	   $data[] = $row;
    }

//free memory associated with result
    $results->close();

//now print the data
    print json_encode($data);
	
	//while($row=mysqli_fetch_assoc($results)){
		
		//var_dump($row);
	//}
	//$num=count(($results));
	//echo $num;
  ?>