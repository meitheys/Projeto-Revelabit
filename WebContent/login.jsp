<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

	<!--  CSS -->	
	<link rel="stylesheet" href="estilos/estilos.css" type="text/css">

	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

	<!-- Fotorama -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <link  href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>

	<!-- Ajax -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript"></script>
    
    <!-- JQuerry -->
    <script
  	src="https://code.jquery.com/jquery-1.12.4.js"
  	integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="
  	crossorigin="anonymous">
    </script>

	


</head> 

	

<body>
	
	<header>

	

	<div>
	<a href ="index.jsp"><img src="imagens/logo.png" class="logo" /></a>
	</div>
	
	
	

	<div>
	<!-- Search form -->
	
	<input class="form-control" type="text" placeholder="Search" aria-label="Search" id="procurar">
	</div>
	
	

	<div class="btn-group ">
  <button type="button" class="btn btn-danger" disabled="">Usuário</button>
  <button type="button" disabled="" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Toggle Dropdown</span>
  </button>
  <div class="dropdown-menu">
	<!--<a class="dropdown-item" href="login.jsp">Já tem conta? Logar</a>-->
    <a class="dropdown-item" href="cadastro.jsp">Registrar-se</a>
    <a class="dropdown-item" href="clientes.jsp">Dados de Cliente</a>
    <a class="dropdown-item" href="cadastrarAnunciante.jsp">Torne-se um anunciante</a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="conheca.jsp">Conheça a empresa</a>
  </div>
</div>
	
	<hr class="linha">


	</header>

	<h2 class="pLogin">Login</h2>

	<form class="formularioLogin" action="requisicoes/catchSessao.jsp" method="post" >

	<div class="Nome">
    <label for="exampleInputPassword1"></label>
    <input type="text" class="form-control" id="nomeLogin" name="nomeLogin" placeholder="Nome Completo">
  	</div>		
	<br>		
	<div class="Senha">
    <label for="exampleInputPassword1"></label>
    <input type="password" class="form-control" name="senhaLogin" id="senhaLogin" placeholder="Senha">
  	</div>
	<br>

	<button type="submit" class="btn btn-success" id="btnLogin">Logar</button>

	</form>
		<br>
		<br>
		<a class="cadastrese" href="cadastro.jsp">Não tem uma conta? Cadastre-se já!</a>
	
	
</body>

	<%@ include file="footer.jsp" %>

</html>