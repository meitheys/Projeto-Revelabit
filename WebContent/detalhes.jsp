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
	

		
		
	<%@include file="topo.jsp" %>


	<!-- nomePublicador -->
	<div id="nomeDoDetalhe">
    <h5 class="card-title" ><% out.print(rs.getString(2)); %></h5>
	</div>

	<div id="quadrado">
	
	<ul>
		<li>Parcelado em at� 12x s/ Juros.</li>
			<li>Entrega em at� 30 dias.</li>
				<li>Desconto de 10% � vista.</li>
					<li>Devolu��o at� 15 dias depois da compra.</li>
					
	</ul>
						<h5 class="venomExtreme">R$ <%out.print(rs.getString(8)); %></h5>
	
		
		
			<a href="compra.jsp"><button type="button" class="btn btn-warning" id="btnDetalhe">Continuar</button></a>
		
		
	
		
		
		
	
	</div>

	<img src="imagens/<%out.print(rs.getString(7)); %>" id="imagemDoDetalhe" >
 
 
 <div id="tituloDoDetalhe">
    <!-- Titulo -->
    <h5 class="card-title" ><% out.print(rs.getString(4)); %></h5>
  </div> 
  
  <hr class="hrDoDetalhe">
  
  <div id="conteudoDoDetalhe">
  
    <!-- Conteudo -->
    <h5 class="card-title" ><% out.print(rs.getString(5)); %></h5>
  </div>

	<% } %>

</body>

	<%@include file="footer.jsp" %>

</html>