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
	int idAnunciante = ab.getIdAnunciante();
		
	%>

	<form class="formularioDados" action="requisicoes/excluirAnunciante.jsp" method="post">
	<br>
	
	<input type="hidden" name="id" value="<% out.println(ab.getIdAnunciante()); %>">		
	<input type="text" value="<% out.println(ab.getNomeAnunciante()); %>" id="nomeDadoAA" class="form-control" placeholder="Nome">
	<input type="text" value="<% out.println(ab.getNomeServicoAnunciante()); %>" id="servicoDadoAA" class="form-control" placeholder="Serviço">
	<input type="text" value="<% out.println(ab.getSenhaAnunciante()); %>" id="senhaDadoAA" class="form-control" placeholder="Senha">
	<input type="text" value="<% out.println(ab.getEmailAnunciante()); %>" id="emailDadoAA" class="form-control" placeholder="Email">
	<input type="text" value="<% out.println(ab.getTelefoneAnunciante()); %>" id="telefoneDadoAA" class="form-control" placeholder="Telefone">
	<input type="text" value="<% out.println(ab.getCpfAnunciante()); %>" id="cpfDadoAA" class="form-control" placeholder="CPF">
	<input type="text" value="<% out.println(ab.getEnderecoAnunciante()); %>" id="enderecoDadoAA" class="form-control" placeholder="Endereço">
	<input type="text" value="Anunciante" id="enderecoDadoAA" class="form-control" placeholder="Endereço">
	<div class="botoesDados2">
	<button type="submit" id="botaoExcluir2" class="btn btn-danger">Excluir a Conta</button>	
	</div>
	</form>
	
	<div id="quadradoo3">
	</div>
	
	<div class="botoesDados">
	<a href="alterarSeusDadosAnu.jsp"><button type="button"  id="botaoAlterar3" class="btn btn-warning">Alterar Dados</button></a>
	</div>
	
	

	<hr>
	
	
</body>
	
	

</html>