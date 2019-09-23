<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro</title>

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
  <button type="button" class="btn btn-danger" >Usuário</button>
  <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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