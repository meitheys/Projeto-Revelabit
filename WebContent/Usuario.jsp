<%@page import="dao.UsuarioDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexao.Conexao"%>
<%@page import="java.sql.Statement"%>
<%@page import="beans.UsuarioBean"%>
<%@page import="beans.AnuncianteBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<title>Dados</title>

	<%@include file="topo.jsp" %>

	<%
		
	UsuarioBean ub = (UsuarioBean) session.getAttribute("Usuario");
    int	idCliente = ub.getIdCliente();

	//Obter os dados do produto selecionado
	UsuarioDao ud = new UsuarioDao();
	UsuarioBean ub2 = ud.obterDados2(idCliente);
	
	%>

	<form class="formularioDados" action="requisicoes/excluirUsuario.jsp" method="post" >
	<br>
	
	<br>
	<input type="hidden" name="idCliente" id="idCliente" class="idCliente" value="<% out.println(ub.getIdCliente()); %>">	
	<input type="text" value="<% out.println(ub.getNomeCliente()); %>" id="nomeDado1" class="form-control" placeholder="Nome">
	<input type="text" value="<% out.println(ub.getSenhaCliente()); %>" id="senhaDado1" class="form-control" placeholder="Senha">
	<input type="text" value="<% out.println(ub.getEmailCliente()); %>" id="emailDado1" class="form-control" placeholder="Email">
	<input type="text" value="<% out.println(ub.getContatoCliente()); %>" id="telefoneDado1" class="form-control" placeholder="Telefone">
	<input type="text" value="<% out.println(ub.getCpfCliente()); %>" id="cpfDado1" class="form-control" placeholder="CPF">
	<input type="text" value="<% out.println(ub.getEnderecoCliente()); %>" id="enderecoDado1" class="form-control" placeholder="Endereço">
	<input type="text" value="Usuario" id="tipo" class="form-control" placeholder="#">
	
	
	
	<div class="botoesDados">
	<a href="alterarSeusDados.jsp"><button type="button"  id="botaoAlterar" class="btn btn-warning">Alterar Dados</button></a>
	</div>
	
	<div class="botoesDados2">
	<button type="submit" value="excluir" id="botaoExcluir" class="btn btn-danger">Excluir a Conta</button>	
	</div>
	
	</form>
	
	<div id="quadradoo" >
	<img src="imagens/cliente3.png" class="imgCliente">
	</div>
	
		<a href="#" id="scroll" style="display: none;"><span></span></a>
	
</body>
	
	<%@include file="footer.jsp" %>

</html>
	