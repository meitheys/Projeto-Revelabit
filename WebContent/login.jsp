<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	<title>Login</title>

<%@include file="topo.jsp" %>

	<h2 class="pLogin">Login</h2>

	<form class="formularioLogin">

	<div class="Nome">
    <label for="exampleInputPassword1"></label>
    <input type="text" class="form-control" id="nomeLogin" placeholder="Nome Completo">
  	</div>

	<div class="Senha">
    <label for="exampleInputPassword1"></label>
    <input type="password" class="form-control" id="senhaLogin" placeholder="Senha">
  	</div>

	<button type="button" class="btn btn-success" id="btnLogin">Logar</button>




	</form>

</body>

	<%@ include file="footer.jsp" %>


</html>