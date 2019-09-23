<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="conexao.Conexao"%>
<%@page import="beans.UsuarioBean"%>
<%@page import="beans.AnuncianteBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<title>Dados</title>

<%@include file="topo.jsp" %>
	<%
	
	
	AnuncianteBean ab = (AnuncianteBean) session.getAttribute("Anunciante");
		
	%>

	

	<form class="formularioDados" action="requisicoes/excluirAnunciante.jsp" method="post">
	<br>
	
	<input type="hidden" name="id" value="<% out.println(ab.getIdAnunciante()); %>">		
	<input type="text" value="<% out.println(ab.getNomeAnunciante()); %>" id="nomeDado" class="form-control" placeholder="Nome">
	<input type="text" value="<% out.println(ab.getNomeServicoAnunciante()); %>" id="servicoDado" class="form-control" placeholder="Serviço">
	<input type="text" value="<% out.println(ab.getSenhaAnunciante()); %>" id="senhaDado" class="form-control" placeholder="Senha">
	<input type="text" value="<% out.println(ab.getEmailAnunciante()); %>" id="emailDado" class="form-control" placeholder="Email">
	<input type="text" value="<% out.println(ab.getTelefoneAnunciante()); %>" id="telefoneDado" class="form-control" placeholder="Telefone">
	<input type="text" value="<% out.println(ab.getCpfAnunciante()); %>" id="cpfDado" class="form-control" placeholder="CPF">
	<input type="text" value="<% out.println(ab.getEnderecoAnunciante()); %>" id="enderecoDado" class="form-control" placeholder="Endereço">
	<div class="botoesDados2">
	<button type="submit" id="botaoExcluir2" class="btn btn-danger">Excluir a Conta</button>	
	</div>
	</form>
	
	<div id="quadradoo2">
	</div>
	
	<div class="botoesDados">
	<a href="alterarSeusDadosAnu.jsp"><button type="button"  id="botaoAlterar2" class="btn btn-warning">Alterar Dados</button></a>
	</div>
	
	

	<hr>
	
	
</body>
	
	

</html>