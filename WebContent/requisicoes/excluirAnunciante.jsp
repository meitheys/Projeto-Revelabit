<%@page import="beans.AnuncianteBean"%>
<%@page import="dao.AnuncianteDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    
      
	
	AnuncianteBean ab = (AnuncianteBean) session.getAttribute("Anunciante");
    
    //Obter id
    int idAnunciante = ab.getIdAnunciante();
    
    //Excluir
    AnuncianteDao ad = new AnuncianteDao();
   	boolean valida = ad.excluirAnu(idAnunciante);
   	
   	//Redirecionar
   	if(valida == true){
   		session.removeAttribute("Anunciante");
   		response.sendRedirect("../index.jsp");
   	}
   	else {
   		response.sendRedirect("../Anunciante.jsp?mensagem=excluirFalha");
   	}
   	
    
    
    
    
    %>