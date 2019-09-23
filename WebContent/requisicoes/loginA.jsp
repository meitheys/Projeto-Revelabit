<%@page import="beans.UsuarioBean"%>
<%@page import="dao.UsuarioDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    
    String nomeLogin = request.getParameter("nomeLogin");
    String senhaLogin = request.getParameter("senhaLogin");
    
    //Validar
    UsuarioDao ud = new UsuarioDao();
    
    int contador = ud.validarLoginU(nomeLogin, senhaLogin);
    
    //Condicional
    if(contador == 0){
    	response.sendRedirect("../cadastro.jsp");
    	
    }else{
    	UsuarioBean ub = ud.obterDados(nomeLogin, senhaLogin);
    	session.setAttribute("Usuario", ub);
    	response.sendRedirect("../index.jsp");
    }
    
    
    
    %>