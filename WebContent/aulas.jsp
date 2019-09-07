<%@page import="java.sql.ResultSet"%>
<%@page import="conexao.Conexao"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <title>Aulas</title>
	    
	<%@include file="topo.jsp" %>

	<%
		String sql = "SELECT * FROM publicacoes WHERE cbServico = 'Aulas'";
		Statement stmt = Conexao.obterConexao().createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()){
	%>
	
		 <!-- Controle do tamanho da coluna -->
		 <div class="col-md-3">
		
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
         <a href="detalhes.jsp?id=<% out.print(rs.getInt(1));%>" class="btn btn-outline-light btn-sm" id="numero" name="numero">Ir para Página</a>          
                           
         </div>
         
         </div>
      
     	 </div>
     		 
			<!--<a href="detalhes.jsp?id=<% out.print(rs.getInt(1));%>">-->
			<!--<h1 id="nomeDoPublicador"><% out.print(rs.getString(2)); %></h1>-->
			<!--<img src="imagens/<% out.print(rs.getString(7)); %>" id="imagemDaPublicacao">-->
			<!--<h1 id="tituloDaPublicacao"><% out.print(rs.getString(4)); %></h1>-->
			<!--<h3 id="conteudoDaPublicacao"><% out.print(rs.getString(5)); %></h1>-->
			<!--<h3 id="servicoPublicacao"><% out.print(rs.getString(6)); %></h3>-->
				
	<% } %>

</body>


	


		
	
	
</html>

