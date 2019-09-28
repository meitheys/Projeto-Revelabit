<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro</title>

	<!--  CSS -->	
	<link rel="stylesheet" href="estilos/estilos.css" type="text/css">
	<link rel="stylesheet" href="estilos/estilosMenu.css" type="text/css">

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

	 <script type="text/javascript">
    function mascaraCPF2(cpf){ 
        if(cpfCliente.value.length == 3)
        	cpfCliente.value = cpfCliente.value + '.'; 
        if(cpfCliente.value.length == 7)
        	cpfCliente.value = cpfCliente.value + '.'; 
        if(cpfCliente.value.length == 11)
        	cpfCliente.value = cpfCliente.value + '-';
}    
</script>

<script type="text/javascript">
    function mascaraTelefone2(telefoneCadastro){ 
        if(contatoCliente.value.length == 0)
        	contatoCliente.value = '(' + contatoCliente.value; 
        if(contatoCliente.value.length == 3)
        	contatoCliente.value = contatoCliente.value + ') '; 
        if(contatoCliente.value.length == 9)
        	contatoCliente.value = contatoCliente.value + '-';
}
	</script>

	<Script>
	
	/* Set the width of the side navigation to 250px and the left margin of the page content to 250px and add a black background color to body */
	function openNav() {
	  document.getElementById("mySidenav").style.width = "250px";
	  document.getElementById("main").style.marginRight = "250px";
	  document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
	}

	/* Set the width of the side navigation to 0 and the left margin of the page content to 0, and the background color of body to white */
	function closeNav() {
	  document.getElementById("mySidenav").style.width = "0";
	  document.getElementById("main").style.marginRight = "0";
	  document.body.style.backgroundColor = "white";
	}
	
	</Script>

	

</head> 


<body>
	
	<header id="header">

	

	<div>
	<a href ="index.jsp"><img src="imagens/logo.png" class="logo"/></a>
	</div>
	
	
	

	
	
	


	
	<div id="teste">
	<ul class="nav navbar-nav" id="dropdown1">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Publicações <span class="glyphicon glyphicon-user pull-right"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Aulas <span class="glyphicon glyphicon-cog pull-right"></span></a></li>
            <li class="divider"></li>
            <li><a href="#">Consultoria <span class="glyphicon glyphicon-stats pull-right"></span></a></li>
            <li class="divider"></li>
            <li><a href="#">Saúde <span class="badge pull-right">  </span></a></li>
            <li class="divider"></li>
            <li><a href="#">Manutenção <span class="glyphicon glyphicon-heart pull-right"></span></a></li>
            <li class="divider"></li>    
          </ul>
        </li>
      </ul>
	</div>
	
	<div id="teste2">
	<ul class="nav navbar-nav" id="dropdown1">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Publique já <span class="glyphicon glyphicon-user pull-right"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Publique Seu Serviço <span class="glyphicon glyphicon-cog pull-right"></span></a></li>
            <li class="divider"></li>
          </ul>
        </li>
      </ul>
	</div>
	
	<div id="teste3">
	<ul class="nav navbar-nav" id="dropdown1">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Sobre Nós <span class="glyphicon glyphicon-user pull-right"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Conheça a Empresa <span class="glyphicon glyphicon-cog pull-right"></span></a></li>
            <li class="divider"></li>      
          </ul>
        </li>
      </ul>
	</div>
		
	<hr class="linha">
	
	<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#" style="color: red;" id="um">Você não está logado!</a>

</div>

<!-- Use any element to open the sidenav -->
<img src="imagens/menuToggle.png" onclick="openNav()"  id="menuTog2">

<!-- Add all page content inside this div if you want the side nav to push page content to the right (not used if you only want the sidenav to sit on top of the page -->
<div id="main">
 
</div>

	</header>

	<img src="imagens/user.png" class="user">

	<h2 class="pCadastro">Cadastro</h2>
	
	<br>

	<form class="formularioCadastro" action="requisicoes/cadastrarCliente.jsp" method="post">
	
	<div class="Nome">
    <label for="exampleInputPassword1"> </label>
    <input type="text" class="form-control" name="nomeCliente" id="nomeCliente" placeholder="Nome Completo">
  	</div>
  	
	<div class="Email">
	<label for="exampleInputEmail1"></label>	
    <input type="email" class="form-control" name="emailCliente" id="emailCliente" aria-describedby="emailHelp" placeholder="Email">
  	</div>
  	
	<div class="Senha">
    <label for="exampleInputPassword1"></label>
    <input type="password" class="form-control" name="senhaCliente" id="senhaCliente" placeholder="Senha">
  	</div>
  		
  	<div class="cpf">
    <label for="exampleInputPassword1"></label>
    <input type="text"  class="form-control" name="cpfCliente" id="cpfCliente" placeholder="CPF" onkeypress="mascaraCPF2(this)" maxlength="14">
  	</div>
	
	<div class="endereco">
    <label for="exampleInputPassword1"></label>
    <input type="text" class="form-control" name="enderecoCliente" id="enderecoCliente" placeholder="Endereço ex: Rua Bahia Nº 666" >
  	</div>
	
	<div class="telefone">
    <label for="exampleInputPassword1"></label>
    <input type="text" class="form-control" name="contatoCliente" id="contatoCliente" placeholder="Telefone" onkeypress="mascaraTelefone2(this)" maxlength="13">
  	</div>
  	
  	<input type="checkbox" class="termos">Confirmar termos de uso.
  	
  	<button type="submit"  class="btn btn-success" id="btnEnviar">Enviar</button>
  	
	</form>
	
</body>

	<%@ include file="footer.jsp" %>


</html>