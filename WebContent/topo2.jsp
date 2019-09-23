<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

	<%@include file="topo.jsp" %>

		<!--  CSS -->
	<link rel="stylesheet" href="estilos/estilosMenu.css">

	<!-- Angular -->
	<script src="https://code.angularjs.org/1.0.1/angular-1.0.1.min.js"></script>
	<script src="lib/angular/angular.js"></script>


	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

	<!-- Fotorama -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <link  href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>



	


</head>

	<script>
	

	
	</script>

<body>

	

   <!-- O checkbox � o principal item dessa nossa brincadeira
	gra�as ao seletor :checked n�s poderemos ver se ele 
	est� ativo ou n�o -->
<input type="checkbox" id="menu-tgl" />

<!-- Aqui vem o menu que ficar� escondido -->
<nav class="menu">
	<!-- Nosso outro protagonista, a tag label, ser�
		respons�vel por ativar ou desativar o nosso checkbox
		ativando e desativando a pseudo-classe :checked  -->
	<label for="menu-tgl" class="menu-btn"></label>
	
	<!-- Conte�do do nosso menu -->
	<ul>
		<li><a href="#">P�gina 1</a></li>
		<li><a href="#">P�gina 2</a></li>
		<li><a href="#">P�gina 3</a></li>
	</ul>
</nav>






</body>

</html>