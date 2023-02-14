<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!DOCTYPE HTML PUBLIC "//-w3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html5/strict/.dtd">

<html>
<head>
<title>Relatórios Associacao Progresso</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
  <input type="button" onclick="window.print()" value="Imprimir" style="background-color:green;color:white;float:right;padding-right:10px;"/>
  <br/>
  
  <canvas id="pie-chart" width="800" height="450"></canvas>
<script>
$(document).ready(function(){
	$.ajax({
		url: "http://localhost:81/dataBeneficiarios.php",
		method: "GET",
		success: function(data) {
		var obj = jQuery.parseJSON(data);
			console.log(obj);
			var projecto = [];
			var benH = [];
			var benM = [];

			for(var i in obj) {
				projecto.push("Projecto " + obj[i].nomeProj);
				benH.push(obj[i].beneficiariosH);
				benM.push(obj[i].beneficiariosM);
			}

			var chartdata = {
				labels: projecto,
				datasets : [
					{
					    label: 'Player Score',
						backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
						data: benH
					}
				]
			};

			var ctx = $("#pie-chart");
			
			var pieGraph = new Chart(ctx, {
				type: 'pie',
				data: chartdata
			});
		},
		error: function(data) {
			console.log(data);
		}
	});
});
</script>
</body>
</html>
