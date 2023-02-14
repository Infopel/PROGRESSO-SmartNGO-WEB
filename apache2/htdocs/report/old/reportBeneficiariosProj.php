﻿<?php
	


	//incluindo os ficheiros de system DB
	// Conexao PDO
	
	include_once('system/config.php');
	require_once('system/BD.class.php');

	$db = BD::conn();

	//Begin
	// Primeiro pegamos os planos na base dedos

	$listPlanes = "";
	$dataListPro = "";
	$dataListOrc = "";
	$dataListvGasto = "";
	$listProgramas = "";
	$getTotal = "";

	$get_planoEst = $db->prepare('SELECT id AS id_proj, name AS nome_plano FROM projects AS main_plan WHERE parent_id is not null AND status=1 AND parent_id <> 12');
	$get_planoEst->execute();

	while ($planos = $get_planoEst->fetchObject()) {
		$listPlanes .= "<option value='".$planos->id_proj."'><a href='#plano'>".$planos->nome_plano."</a></option>";
	}

	if(isset($_GET['id_plan'])){

		$id_plan = $_GET['id_plan'];

		$get_projectos = $db->prepare('SELECT id, name AS nome_programa FROM projects AS projectos WHERE id = ?');
		$get_projectos->execute(array($_GET['id_plan']));

		while ($programa = $get_projectos->fetchObject()) {

			$dataListPro .= '"'.$programa->nome_programa.'",';

			$getListaProg = $db->prepare("SELECT projectos.id as id_projectos, projectos.name as nome_projecto, b_homens.value as bnf_homens, b_mulheres.value as bnf_mulheres FROM projects AS projectos LEFT JOIN custom_values AS b_homens ON (b_homens.custom_field_id = 38 AND b_homens.customized_id = projectos.id) LEFT JOIN custom_values AS b_mulheres ON (b_mulheres.custom_field_id = 39 AND b_mulheres.customized_id = projectos.id) where id = ?");
			$getListaProg->execute(array($programa->id));



			while ($listProg = $getListaProg->fetchObject()) {
				$listProgramas .= "<tr><td>".$listProg->nome_projecto."</td><td>". $listProg->bnf_homens."</td><td>".$listProg->bnf_mulheres."</td></tr>";
			}

			$getBnfTotal = $db->prepare("SELECT SUM(b_homens.value) AS total_homens, SUM(b_mulheres.value) AS total_mulheres FROM projects AS projectos LEFT JOIN custom_values AS b_homens ON (b_homens.custom_field_id = 38 AND b_homens.customized_id = projectos.id) LEFT JOIN custom_values AS b_mulheres ON (b_mulheres.custom_field_id = 39 AND b_mulheres.customized_id = projectos.id) WHERE parent_id is not null");
			$getBnfTotal->execute();
			$total = $getBnfTotal->fetchObject();
			//$getTotal .= "<tr><th>Total dos Beneficiarios</td><th><b>". $total->total_homens."</b></td><td><b>".$total->total_mulheres."</b></td></tr>";

		}

		
			

	}

?>





<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Associacao Progresso</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	
	<!--Custom Font-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>


<body>
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span></button>
				<a class="navbar-brand" href="#"><span>Associacao</span> Progresso</a>
				
			</div>
		</div><!-- /.container-fluid -->
	</nav>

	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">Usuario</div>
				<div class="profile-usertitle-status"><span class="label-success"></span>Associacao Progresso</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		<div style="margin: 10px" class="profile-usertitle-status">Relatórios</div>

		<ul class="nav menu">
			<li><a href="index.php"><em class="fa fa-bar-chart">&nbsp;</em>Or&ccedil;amento PD</a></li>
			<li><a href="indexProj.php"><em class="fa fa-bar-chart">&nbsp;</em>Or&ccedil;amento Projecto</a></li>
			<li><a href="reportBeneficiarios.php"><em class="fa fa-bar-chart">&nbsp;</em>Beneficiários PD</a></li>
<li><a class="active" href="reportBeneficiariosProj.php"><em class="fa fa-bar-chart">&nbsp;</em>Beneficiários Projecto</a></li>		<!--<li><a href="reportIndicadorMeta.php"><em class="fa fa-bar-chart">&nbsp;</em>Indicadores / Metas</a></li>
			<li><a href="reportIndicadorPD.php"><em class="fa fa-bar-chart">&nbsp;</em>Indicadores / Metas PD</a></li>-->
			<li><a href="reportPProv.php"><em class="fa fa-bar-chart">&nbsp;</em>Projectos por Provincia</a></li>
			<li><a href="reportContProj.php"><em class="fa fa-bar-chart">&nbsp;</em>Contribuição de Projectos</a></li>
			<li><a href="dashboard.php"><em class="fa fa-bar-chart">&nbsp;</em>Dashboard</a></li>
		</ul>
	</div><!--/.sidebar-->


	<!-- Main Board-->

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Relatórios</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Beneficiários de Projectos</h1>
			</div>
		</div><!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<div class="panel-body">
					<div class="col-md-6">
						<form action="#">
							<div class="form-group">
								<label>Selecione o Plano Estrategico</label>
								<select name='id_plan' id="select-plan" class="form-control">
									<?php echo $listPlanes;?>
								</select>
								<p></p>
								<button type="submit" class="btn btn-success">Gerar Graficos</button>
							</div>
						</form>
						<div class="form-group">
							<table class="table table-bordered">
								<thead>
									<tr>
							        <th>Projecto</th>
							        <th>Beneficiarios Homens</th>
							        <th>Beneficiarios Mulheres</th>
							      	</tr>
								</thead>
								<tbody>
									<?php echo $listProgramas;?>
									<tr><th>Total dos Beneficiarios</th>
										<td><b><?php echo $total->total_homens;?></b></td>
										<td><b><?php echo $total->total_mulheres;?></b></td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>
					<div class="col-md-6"></div>
				</div>
			</div>
		</div><!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<div class="col-md-6">

					<table class="table table-bordered">
						<h4><b>Beneficiarios por Género</b></h4>
								<thead>
									<tr>
							        <th>Homens</th>
							        <th>Mulheres</th>
							      	</tr>
								</thead>
								<tbody>
									<tr>
							        <td><?php echo $total->total_homens;?></td>
							        <td><?php echo $total->total_mulheres;?></td>
							      	</tr>
								</tbody>
							</table>

					<div class="panel panel-default">
						<div class="panel-heading">
							Gráfico circular: Género.
							
							<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
						<div class="panel-body">
							<div class="canvas-wrapper">
								<canvas class="chart" id="doughnut-chart" height="262" width="525" style="width: 525px; height: 262px;"></canvas>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6">

					<table class="table table-bordered">
						<h4><b>Beneficiarios por Faixa Etária</b></h4>
								<thead>
									<tr>
							        <th>Faixa Etária</th>
							        <th>Numero</th>
							      	</tr>
								</thead>
								<tbody>
									<tr>
							        <td>stdClass::$getFaixaEtaria</td>
							        <td>stdClass::$getNumero</td>
							      	</tr>
								</tbody>
							</table>

					<div class="panel panel-default">
						<div class="panel-heading">
							Gráfico circular: Faixa Etária.
							
							<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
						<div class="panel-body">
							<div class="canvas-wrapper">
								<canvas class="chart" id="doughnut-chart_2" height="262" width="525" style="width: 525px; height: 262px;"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div><!--/.row-->
			
		</div>

	</div>

	<script src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="https://unpkg.com/popper.js/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/custom.js"></script>
	<script>
		window.onload = function () {


			var pieData = [
			{
				value: 300,
				color:"#30a5ff",
				highlight: "#62b9fb",
				label: "Faixa Etaria"
			},
			{
				value: 120,
				color: "#f9243f",
				highlight: "#f6495f",
				label: "Faixa Etaria"
			}

		];
			
	var doughnutData = [
				{
					value: <?php echo $total->total_mulheres;?>,
					color:"#30a5ff",
					highlight: "#62b9fb",
					label: "Mulheres"
				},
				{
					value: <?php echo $total->total_homens;?>,
					color: "#ffb53e",
					highlight: "#fac878",
					label: "Homens",
            		text: 'Custom Chart Title'
				}

			];	


				var chart3 = document.getElementById("doughnut-chart").getContext("2d");
				window.myDoughnut = new Chart(chart3).Doughnut(doughnutData, {
				responsive: true,
				segmentShowStroke: false
				});

				var chart3_1 = document.getElementById("doughnut-chart_2").getContext("2d");
				window.myDoughnut = new Chart(chart3).Doughnut(doughnutData, {
				responsive: true,
				segmentShowStroke: true,
				label: true,
				title: true,
				});

				var chart4 = document.getElementById("doughnut-chart_2").getContext("2d");
				window.myPie = new Chart(chart4).Pie(pieData, {
				responsive: true,
				segmentShowStroke: false,
				dysplay: true
				});

			};

			
	</script>
	
</body>
</html>