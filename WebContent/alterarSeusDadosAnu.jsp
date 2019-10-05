<%@page import="beans.AnuncianteBean"%>
<%@page import="dao.AnuncianteDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <title>Altere seus Dados</title>
    
    <%@include file="topo.jsp" %>
    
    <%
		
	AnuncianteBean ab = (AnuncianteBean)session.getAttribute("Anunciante");
    
	%>
	
	<form class="formularioAlterar" action="requisicoes/alterarAnunciante.jsp" method="post" >
	<br>
	<br>
	<input type="text" value="<% out.println(ab.getNomeAnunciante()); %>" name="nomeDado" id="nomeDado" class="form-control" placeholder="Nome">
	<input type="text" value="<% out.println(ab.getNomeServicoAnunciante()); %>" name="nomeSDado" id="nomeSDado" class="form-control" placeholder="Nome">
	<input type="text" value="<% out.println(ab.getSenhaAnunciante()); %>" name="senhaDado" id="senhaDado" class="form-control" placeholder="Senha">
	<input type="text" value="<% out.println(ab.getEmailAnunciante()); %>" name="emailDado" id="emailDado" class="form-control" placeholder="Email">
	<input type="text" value="<% out.println(ab.getTelefoneAnunciante()); %>" name="telefoneDado" id="telefoneDado" onkeypress="mascaraTelefone5(this)" class="form-control" placeholder="Telefone">
	<input type="text" value="<% out.println(ab.getCpfAnunciante()); %>" name="cpfDado" id="cpfDado" onkeypress="mascaraCPF5(this)" class="form-control" placeholder="CPF">
	<input type="text" value="<% out.println(ab.getEnderecoAnunciante()); %>" name="enderecoDado" id="enderecoDado" class="form-control" placeholder="Endereço">
	<input type="readonly" value="Usuario"  id="tipo2" class="form-control" placeholder="#">
	<input type="readonly" name="idAnunciante"  id="idAnunciante" class="form-control idAnunciante" value="<% out.println(ab.getIdAnunciante()); %>">
	<button type="submit" value="Alterar"  id="botaoAlterar2" class="btn btn-warning">Alterar Dados</button>
	</form>