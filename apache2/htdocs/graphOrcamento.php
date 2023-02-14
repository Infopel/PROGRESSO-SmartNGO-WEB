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
  
  <canvas id="bar-chart" width="800" height="450"></canvas>
<script>
$(document).ready(function(){
	$.ajax({
		url: "http://localhost:81/data.php",
		method: "GET",
		success: function(data) {
			var obj = jQuery.parseJSON(data);
			console.log(obj);
			var projecto = [];
			var orcamento = [];

			for(var i in obj) {
				//alert("data= "+data[i]);
				projecto.push("Projecto " + obj[i].nomeProj);
				orcamento.push(obj[i].orcamento);
			}

			var chartdata = {
				labels: projecto,
				datasets : [
					{
					    label: 'Orcamento por Projecto',
						backgroundColor: 'lightgreen',
						borderColor: 'rgba(200, 200, 200, 0.75)',
						hoverBackgroundColor: 'orange',
						hoverBorderColor: 'rgba(200, 200, 200, 1)',
						data: orcamento
					}
				]
			};

			var ctx = $("#bar-chart");

			var barGraph = new Chart(ctx, {
				type: 'bar',
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
