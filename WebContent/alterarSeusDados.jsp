<%@page import="beans.UsuarioBean"%>
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
		
	<input type="text" value="<% out.println(ub.getNomeCliente()); %>" name="nomeDadoAU" id="nomeDadoAU" class="form-control" placeholder="Nome">
	<input type="text" value="<% out.println(ub.getSenhaCliente()); %>" name="senhaDadoAU" id="senhaDadoAU" class="form-control" placeholder="Senha">
	<input type="text" value="<% out.println(ub.getEmailCliente()); %>" name="emailDadoAU" id="emailDadoAU" class="form-control" placeholder="Email">
	<input type="text" value="<% out.println(ub.getContatoCliente()); %>" name="telefoneDadoAU" id="telefoneDadoAU" class="form-control" placeholder="Telefone">
	<input type="text" value="<% out.println(ub.getCpfCliente()); %>" name="cpfDadoAU" id="cpfDadoAU" class="form-control" placeholder="CPF">
	<input type="text" value="<% out.println(ub.getEnderecoCliente()); %>" name="enderecoDadoAU" id="enderecoDadoAU" class="form-control" placeholder="Endereço">
	<input type="text" disabled="disabled" value="Usuario" id="tipoAU" class="form-control" placeholder="#">
	<input type="text" disabled="disabled" name="idCliente" id="idCliente" class="form-control idCliente" value="<% out.println(ub.getIdCliente()); %>">
	<button type="submit" value="Alterar"  id="botaoAlterar2" class="btn btn-warning">Alterar Dados</button>
	
	
	</form>

	<hr>

</body>
</html>