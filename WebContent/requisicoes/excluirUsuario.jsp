<%@page import="beans.UsuarioBean"%>
<%@page import="dao.UsuarioDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%   
    	
	UsuarioBean ub = (UsuarioBean) session.getAttribute("Usuario");
    
    //Obter id
    int idCliente = ub.getIdCliente();
    
    //Excluir
    UsuarioDao ud = new UsuarioDao();
   	boolean valida = ud.excluir(idCliente);
   	
   	//Redirecionar
   	if(valida == true){
   		session.removeAttribute("Usuario");
   		response.sendRedirect("../index.jsp");
   	}
   	else {
   		response.sendRedirect("../Usuario.jsp?mensagem=excluirFalha");
   	}
   	
    %>