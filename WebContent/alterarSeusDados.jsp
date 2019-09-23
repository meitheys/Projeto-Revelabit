<%@page import="dao.UsuarioDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<title>Altere seus Dados</title>

	<%@include file="topo.jsp" %>

	<%
		
	UsuarioBean ub = (UsuarioBean) session.getAttribute("Usuario");
    int	idCliente = ub.getIdCliente();

	//Obter os dados do produto selecionado
	UsuarioDao ud = new UsuarioDao();
	UsuarioBean ub2 = ud.obterDados2(idCliente);
	
	%>
	
	<form class="formularioAlterar" action="requisicoes/alterar.jsp" method="post" >
	<br>
	
	<br>
	<input type="text" name="idCliente" id="idCliente" class="idCliente" value="<% out.println(ub.getIdCliente()); %>">	
	<input type="text" value="<% out.println(ub.getNomeCliente()); %>" name="nomeDado" id="nomeDado" class="form-control" placeholder="Nome">
	<input type="text" value="<% out.println(ub.getSenhaCliente()); %>" name="senhaDado" id="senhaDado" class="form-control" placeholder="Senha">
	<input type="text" value="<% out.println(ub.getEmailCliente()); %>" name="emailDado" id="emailDado" class="form-control" placeholder="Email">
	<input type="text" value="<% out.println(ub.getContatoCliente()); %>" name="telefoneDado" id="telefoneDado" class="form-control" placeholder="Telefone">
	<input type="text" value="<% out.println(ub.getCpfCliente()); %>" name="cpfDado" id="cpfDado" class="form-control" placeholder="CPF">
	<input type="text" value="<% out.println(ub.getEnderecoCliente()); %>" name="enderecoDado" id="enderecoDado" class="form-control" placeholder="Endereço">
	<input type="text" value="Usuario" id="tipo" class="form-control" placeholder="#">
	<button type="submit" value="Alterar"  id="botaoAlterar2" class="btn btn-warning">Alterar Dados</button>
	
	
	</form>



</body>
</html>