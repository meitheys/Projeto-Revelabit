<%@page import="beans.AnuncianteBean"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexao.Conexao"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
		

	
	<%
	
		//int id = Integer.parseInt(request.getParameter("id"));
		int id = Integer.parseInt(request.getParameter("id"));
		String sql = "SELECT * FROM publicacoes WHERE idPub = ?";
		PreparedStatement pstmt = Conexao.obterConexao().prepareStatement(sql);
		pstmt.setInt(1, id);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()){
	%>
	
	
	
	<title><% out.print(rs.getString(4)); %></title>
	

	<form action="requisicoes/excluirPublicacao.jsp">
		
	<%@include file="topo.jsp" %>


	<!-- nomePublicador -->
	<div id="nomeDoDetalhe">
    <h5 class="card-title nomePublicador"><% out.print(rs.getString(2)); %></h5>
	</div>

	<div id="quadrado">
	
	<ul>
		<li>Parcelado em até 12x s/ Juros.</li>
			<li>Entrega em até 30 dias.</li>
				<li>Desconto de 10% á vista.</li>
					<li>Devolução até 15 dias depois da compra.</li>	
	</ul>
	
	<h5 class="venomExtreme" id="venomExtreme" name="">R$ <%out.print(rs.getString(8)); %></h5>
	
	<a href="compra.jsp"><button type="button" class="btn btn-warning" id="btnDetalhe">Continuar</button></a>
	
	<button type="submit" class="btn btn-warning" id="excluirPublic" onload="visiInvi()">Excluir A Publicação</button>
	
	</div>

	<img src="imagens/<%out.print(rs.getString(7)); %>" class="imagemPub" id="imagemDoDetalhe" >
 
 <div id="tituloDoDetalhe">
    <h5 class="card-title " ><% out.print(rs.getString(4)); %></h5>
    
    <input type="text" class="card-title tituloD" id="tituloD" name="tituloD" value="<% out.print(rs.getString(4)); %>"></input>
  	
  
  </div> 
  
  <input type="text" class="card-title" id="idViewer" name="idViewer" value="<% out.print(rs.getString(1)); %>"></input>
  
 
  
  <hr class="hrDoDetalhe">
  
  <div id="conteudoDoDetalhe">
  
    <!-- Conteudo -->
    <h5 class="card-title"><% out.print(rs.getString(5)); %></h5>
  </div>

	

	</form>	

	<% } %>

	<a href="#" id="scroll" style="display: none;"><span></span></a>

</body>

	<%@include file="footer.jsp" %>

</html>