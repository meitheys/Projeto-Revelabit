<%@page import="dao.AnuncianteDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <title>Altere seus Dados</title>
    
    <%@include file="topo.jsp" %>
    
    <%
		
	AnuncianteBean ab = (AnuncianteBean) session.getAttribute("Anunciante");
    int	idAnunciante = ab.getIdAnunciante();

	//Obter os dados do produto selecionado
	AnuncianteDao ad = new AnuncianteDao();
	//AnuncianteBean ub2 = ud.obterDados2(idCliente);
	
	%>
	
	<form class="formularioAlterar" action="requisicoes/alterar.jsp" method="post" >
	<br>
	
	<br>
	<input type="text" name="idCliente" id="idCliente" class="idCliente" value="<% out.println(ub.getIdCliente()); %>">	
	<input type="text" value="<% out.println(ab.getNomeAnunciante()); %>" name="nomeDado" id="nomeDado" class="form-control" placeholder="Nome">
	<input type="text" value="<% out.println(ab.getSenhaCliente()); %>" name="senhaDado" id="senhaDado" class="form-control" placeholder="Senha">
	<input type="text" value="<% out.println(ab.getEmailCliente()); %>" name="emailDado" id="emailDado" class="form-control" placeholder="Email">
	<input type="text" value="<% out.println(ab.getContatoCliente()); %>" name="telefoneDado" id="telefoneDado" class="form-control" placeholder="Telefone">
	<input type="text" value="<% out.println(ab.getCpfCliente()); %>" name="cpfDado" id="cpfDado" class="form-control" placeholder="CPF">
	<input type="text" value="<% out.println(ab.getEnderecoCliente()); %>" name="enderecoDado" id="enderecoDado" class="form-control" placeholder="Endereço">
	<input type="text" value="Usuario" id="tipo" class="form-control" placeholder="#">
	<button type="submit" value="Alterar"  id="botaoAlterar2" class="btn btn-warning">Alterar Dados</button>
	
	
	</form>