<%@page import="dao.PublicacaoDao"%>
<%@page import="dao.AnuncianteDao"%>
<%@page import="beans.AnuncianteBean"%>
<%@page import="beans.UsuarioBean"%>
<%@page import="dao.UsuarioDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%   
    	
	AnuncianteBean ab = (AnuncianteBean) session.getAttribute("Anunciante");
    

    
    //Obter id
    int idAnunciante = ab.getIdAnunciante();
    
    String tituloPub = request.getParameter("tituloD");
    
    System.out.println(idAnunciante+"Esse é o ID");
    System.out.println(tituloPub+"Esse é o Titulo");
    
    //Excluir
    PublicacaoDao pd = new PublicacaoDao();
   	boolean valida = pd.excluirPub(idAnunciante, tituloPub);
   	
   	//Redirecionar
   	if(valida == true){
   		response.sendRedirect("../Anunciante.jsp");
   	}
   	else {
   		response.sendRedirect("../index.jsp");
   	}
   	
    %>