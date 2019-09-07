<%@page import="beans.UsuarioBean"%>
<%@page import="dao.UsuarioDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	<%
	
	//Obter dados
	String nomeCliente = request.getParameter("nomeCliente");
	String senhaCliente = request.getParameter("senhaCliente");
	String enderecoCliente = request.getParameter("enderecoCliente");
	String emailCliente = request.getParameter("emailCliente");
	String cpfCliente = request.getParameter("cpfCliente");
	String contatoCliente = request.getParameter("contatoCliente");
	
    UsuarioDao ud = new UsuarioDao();
    UsuarioBean ub = new UsuarioBean();
	
    ud.cadastrar(nomeCliente, senhaCliente, enderecoCliente, emailCliente, cpfCliente, contatoCliente);
    
  
    
	%>