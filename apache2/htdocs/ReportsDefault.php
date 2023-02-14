<?php
$servername = "127.0.0.1:3308";
$username = "root";
$password = "Eureka001";
$db="bitnami_redmine";
$proj_id = $_POST["project"];


$conn = new mysqli($servername, $username, $password,$db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$sql2 = "SELECT * from projects WHERE identifier='".$proj_id."'";
$results2=mysqli_query($conn, $sql2);

?>
<html>
<head>
</head>
<body>
<?php

while($row=mysqli_fetch_assoc($results2)){

?>
<H2> Projecto <?= ($row['name'])?></H2>
<ul>
<li><a href="http://5.189.162.27:84/report.php?p=<?= ($row['id'])?>">Relatorio de Beneficiarios </a></li>
<li><a href="http://5.189.162.27:84/reportOrcamento.php?p=<?= ($row['id'])?>">Relatorio de Orcamento </a></li>
</ul>
<?php
}
?>
<form action="reportsDefault.php" method="post">
 <input type="hidden" id="project" name="project" hidden="hidden"/>
<input type="submit" id="btnSubmit" hidden="hidden" />
</form>
<script type="text/javascript">
	
   window.onload= function() {
      var URL=window.parent.location;
	  var proj = getParameterByName("id",URL);
          document.getElementById("project").value = proj;
          var button = document.getElementById('btnSubmit');
	if("<?php echo $proj_id;?>" == "")
          button.click();
   }

   function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, '\\$&');
    var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, ' '));
}
</script>
</body>
</html>