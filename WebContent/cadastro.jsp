<%@include file="topo.jsp" %>

<title>Cadastrar Cliente</title>

<title>Cadastro</title>

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
    <input type="text" class="form-control" name="cpfCliente" id="cpfCliente" placeholder="CPF">
  	</div>
	
	<div class="endereco">
    <label for="exampleInputPassword1"></label>
    <input type="text" class="form-control" name="enderecoCliente" id="enderecoCliente" placeholder="Endereço ex: Rua Bahia Nº 666">
  	</div>
	
	<div class="telefone">
    <label for="exampleInputPassword1"></label>
    <input type="text" class="form-control" name="contatoCliente" id="contatoCliente" placeholder="Telefone">
  	</div>
  	
  	<input type="checkbox" class="termos">Confirmar termos de uso.
  	
  	<button type="submit"  class="btn btn-success" id="btnEnviar">Enviar</button>
  	
	</form>
	
</body>

	<%@ include file="footer.jsp" %>


</html>