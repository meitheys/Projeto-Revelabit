<%@page import="com.chilyfacts.com.FileUploadHandler"%>
<%@page import="beans.PublicacaoBean"%>
<%@page import="dao.PublicacaoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    
    //Obter dados
    String nomePublicador = request.getParameter("nomePublicador");
    int idAnunciante = Integer.parseInt(request.getParameter("idDeAnunciar"));
    String tituloPub = request.getParameter("tituloPub");
    String conteudoPub = request.getParameter("conteudoPub");
    String cbServico = request.getParameter("cbServico");
    String imagemPub = request.getParameter("imagemPub");
    String preco = request.getParameter("preco");
    
    PublicacaoDao pd = new PublicacaoDao();
    PublicacaoBean pb = new PublicacaoBean();

	pd.cadastrarPub(nomePublicador, idAnunciante, tituloPub, conteudoPub, cbServico, imagemPub, preco);
    
	response.sendRedirect("../index.jsp");

	
    %>
    
    