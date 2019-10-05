<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexao.Conexao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	<title>Manutenção</title>

		<%@include file="topo.jsp" %>
	
	<br>
	<br>
	<!-- Barra de pesquisa -->
		<div class="container">
			<div class="row pb-4">
   			 <div class="col-12">
      		  <input type="text" name="searchbox" id="searchbox" class="filterinput form-control" placeholder="Encontre um serviço">
    		</div>
		</div>
		</div>
	
	<%
		String sql = "SELECT * FROM publicacoes WHERE cbServico = 'Manutenção'";
		Statement stmt = Conexao.obterConexao().createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()){
	%>
	
	<!--Só daq-->
		<div id="CardFuncao">
		
		<!--Controle do tamanho da coluna-->
		<div class="col-md-3" id="CardFuncao">
			
		<!-- Cor do Card -->
         <div class="card mb-5 text-white bg-dark">
         
         <!-- Colocar Imagem no Card -->
            <img class="card-img-top" src="imagens/<% out.print(rs.getString(7)); %>" id="imagemDaPublicacao" alt="Card image cap">
            
         <!-- Corpo -->
         <div class="card-body">
            
         <!-- Titulo -->
         <h5 class="card-title"><% out.print(rs.getString(2)); %></h5>
               
         <!-- Descrição -->
         <p class="card-text"><% out.print(rs.getString(4)); %></p>
               
         <!-- Button -->
         <a href="detalhes.jsp?id=<% out.print(rs.getInt(1));%>&idViewer=<% out.print(rs.getInt(3)); %>" class="btn btn-outline-light btn-sm">Ir para Página</a>          
           
         </div>
         
         </div>
      
     	 </div>
     	 
     	 </div>
     	 	
	<% } %>

	<a href="#" id="scroll" style="display: none;"><span></span></a>

</body>

	
</html>