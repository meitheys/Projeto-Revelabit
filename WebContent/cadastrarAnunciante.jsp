<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<title>Cadastrar Anunciante</title>

<%@include file="topo.jsp" %>


	<h2 class="pCadastro" ></h2>
	<img src="imagens/anunciante.png" class="userAnunciante">

	<h2 class="pCadastro">Cadastro do anunciante</h2>
	
   </header>
   
   	<form class="formularioCadastroAnunciante" action="requisicoes/cadastroAnunciante.jsp" method="post">
   
	<div class="Nome">
    <label for="exampleInputNome1"></label>
    <input type="text" class="form-control" name="nomeAnunciante" id="nomeAnunciante" placeholder="Seu nome completo">
  </div>
  
  <div class="NomeFantasia">
    <label for="exampleInputNome1"></label>
    <input type="text" class="form-control" name="nomeServicoAnunciante" id="nomeServicoAnunciante" placeholder="Nome Fantasia (Ex: Ronaldo Jardineiro...)">
  </div>
  
  <div class="Senha">
    <label for="exampleInputPassword1"></label>
    <input type="password" class="form-control" name="senhaAnunciante" id="senhaAnunciante"  placeholder="Senha">
  	</div>
  
   <div class="Email">
    <label for="exampleInputEmail1"></label>
    <input type="email" class="form-control" id="emailAnunciante" name="emailAnunciante"  aria-describedby="emailHelp" placeholder="Informe seu E-mail">
    <small id="emailHelp" class="form-text text-muted"></small>
  </div>
  
  <div class="telefone">
    <label for="exampleInputPassword1"></label>
    <input type="text" name="telefoneAnunciante" class="form-control" onkeypress="mascaraTelefone(this)" id="telefoneAnunciante" maxlength="14" placeholder="Informe seu telefone"  />
  	</div>
  
   <div class="cpf">
    <label for="exampleInputPassword1"></label>
    <input type="text" name="cpfAnunciante" class="form-control" id="cpfAnunciante" maxlength="14" placeholder="Informe seu CPF" onkeypress="mascaraCPF(this)" >
  	</div>
  
  <div class="endereco">
    <label for="exampleInputNome1"></label>
    <input type="text" class="form-control" id="enderecoAnunciante" name="enderecoAnunciante" placeholder="Informe seu endereço">
  </div>
  
	<div id="termos">
	<input type="checkbox" class="termos" id="termosAnunciante">Confirmar termos de uso.
	</div>
	
 <button type="submit" value="submit" class="btn btn-success" id="botaoSubmitAnunciante">Cadastrar</button>
 	
</form>



</body>

	<%@include file="footer.jsp" %>


</html>