<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	<title>Login Anunciante</title>

<%@include file="topo.jsp" %>

	<h2 class="pLogin">Login Anunciante</h2>

	<form class="formularioLoginAnunciante" action="requisicoes/loginAn.jsp" method="post" >

	<div class="nomeLoginAnunciante"> 
    <label for="exampleInputPassword1"></label>
    <input type="text" class="form-control" id="nomeLoginAnunciante" name="nomeLoginAnunciante" placeholder="Nome Completo">
  	</div>
		
	<br>
		
	<div class="senhaLoginAnunciante">
    <label for="exampleInputPassword1"></label>
    <input type="password" class="form-control" name="senhaLoginAnunciante" id="senhaLoginAnunciante" placeholder="Senha">
  	</div>

	<br>

	<button type="submit" class="btn btn-success" id="btnLoginAnunciante">Logar</button>

	</form>
	
	

</body>

	<%@ include file="footer.jsp" %>


</html>