<%@page import="beans.AnuncianteBean"%>
<%@page import="dao.AnuncianteDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

      <%
    
    String nomeLoginAnunciante = request.getParameter("nomeLoginAnunciante");
    String senhaLoginAnunciante = request.getParameter("senhaLoginAnunciante");
    
    //Validar
    AnuncianteDao ad = new AnuncianteDao();
    
    int contador = ad.validarLoginAnunciante(nomeLoginAnunciante, senhaLoginAnunciante);
    
    //Condicional
    if(contador == 0){
    	response.sendRedirect("../cadastro.jsp");
    	
    }else{
    	AnuncianteBean ab = ad.obterDadosF(nomeLoginAnunciante, senhaLoginAnunciante);
    	session.setAttribute("Anunciante", ab);
    	response.sendRedirect("../index.jsp");
    }
    
    
    
    %>
    