<%@page import="dao.UsuarioDao"%>
<%@page import="beans.UsuarioBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
	<%
    
    //Obter Dados
    int idCliente = Integer.parseInt(request.getParameter("idCliente"));
    String nomeCliente = request.getParameter("nomeDado");
    String senhaCliente = request.getParameter("senhaDado");
    String cpfCliente = request.getParameter("cpfDado");
    String contatoCliente = request.getParameter("contatoDado");
    String enderecoCliente = request.getParameter("enderecoDado");
    String emailCliente = request.getParameter("emailDado");
    
    
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
    	response.sendRedirect("../Usuario.jsp?mensagem=alterarDeBoassa");
    }else{
    	response.sendRedirect("../Usuario.jsp?mensagem=alterarFalha");
    }
    
    
   	
   	
    %>