<%@page import="dao.AnuncianteDao"%>
<%@page import="beans.AnuncianteBean"%>
<%@page import="dao.UsuarioDao"%>
<%@page import="beans.UsuarioBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
	<%
    
    //Obter Dados
    int idAnunciante = Integer.parseInt(request.getParameter("idAnunciante"));
    String nomeAnunciante = request.getParameter("nomeDado");
    String nomeServicoAnunciante = request.getParameter("nomeSDado");
    String senhaAnunciante = request.getParameter("senhaDado");
    String emailAnunciante = request.getParameter("emailDado");
    String telefoneAnunciante = request.getParameter("telefoneDado");
    String cpfAnunciante = request.getParameter("cpfDado");
    String enderecoAnunciante = request.getParameter("enderecoDado");
       
    //Criar um objeto
    AnuncianteBean ab = new AnuncianteBean();
  	ab.setIdAnunciante(idAnunciante);
  	ab.setNomeAnunciante(nomeAnunciante);
  	ab.setNomeServicoAnunciante(nomeServicoAnunciante);
  	ab.setSenhaAnunciante(senhaAnunciante);
  	ab.setEmailAnunciante(emailAnunciante);
  	ab.setTelefoneAnunciante(telefoneAnunciante);
  	ab.setCpfAnunciante(cpfAnunciante);
  	ab.setEnderecoAnunciante(enderecoAnunciante);
  	
   	//Executa a alteração
   	AnuncianteDao ad = new AnuncianteDao();
    boolean valida = ad.alterarAnu(ab);
    
    //Redirecionar
    if(valida == true) {
    	session.removeAttribute("Anunciante");
    	response.sendRedirect("../index.jsp");
    }else{
    	response.sendRedirect("../Anunciante.jsp?mensagem=alterarFalha");
    }
      	
    %>