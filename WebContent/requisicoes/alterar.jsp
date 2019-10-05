<%@page import="dao.UsuarioDao"%>
<%@page import="beans.UsuarioBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
	<%
    
    //Obter Dados
    int idCliente = Integer.parseInt(request.getParameter("idCliente"));
    String nomeCliente = request.getParameter("nomeDadoAU");
    String senhaCliente = request.getParameter("senhaDadoAU");
    String cpfCliente = request.getParameter("cpfDadoAU");
    String contatoCliente = request.getParameter("telefoneDadoAU");
    String enderecoCliente = request.getParameter("enderecoDadoAU");
    String emailCliente = request.getParameter("emailDadoAU");
    
    
    //Criar um objeto
    UsuarioBean ub = new UsuarioBean();
    ub.setIdCliente(idCliente);
    ub.setNomeCliente(nomeCliente);
    ub.setSenhaCliente(senhaCliente);
    ub.setCpfCliente(cpfCliente);
    ub.setContatoCliente(contatoCliente);
    ub.setEnderecoCliente(enderecoCliente);
    ub.setEmailCliente(emailCliente);
    
   	//Executa a alteração
   	UsuarioDao ud = new UsuarioDao();
    boolean valida = ud.alterar(ub);
    
    //Redirecionar
    if(valida == true) {
    	session.removeAttribute("Usuario");
    	response.sendRedirect("../index.jsp");
    }else{
    	response.sendRedirect("../Usuario.jsp?mensagem=alterarFalha");
    }
    
    
   	
   	
    %>