<%@page import="dao.AnuncianteDao"%>
<%@page import="beans.AnuncianteBean"%>
<%@page import="dao.UsuarioDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    
    //Obter Dados
    String nomeAnunciante = request.getParameter("nomeAnunciante");
    String nomeServicoAnunciante = request.getParameter("nomeServicoAnunciante");
    String senhaAnunciante = request.getParameter("senhaAnunciante");
    String emailAnunciante = request.getParameter("emailAnunciante");
    String telefoneAnunciante = request.getParameter("telefoneAnunciante");
    String cpfAnunciante = request.getParameter("cpfAnunciante");
    String enderecoAnunciante = request.getParameter("enderecoAnunciante");
    
    AnuncianteDao ad = new AnuncianteDao();
    AnuncianteBean ab = new AnuncianteBean();
    
    ad.cadastrar(nomeAnunciante, nomeServicoAnunciante, senhaAnunciante, emailAnunciante, telefoneAnunciante, cpfAnunciante, enderecoAnunciante);
    
    response.sendRedirect("../index.jsp");
    
    %> 