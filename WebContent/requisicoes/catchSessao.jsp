<%@page import="beans.UsuarioBean"%>
<%@page import="beans.AnuncianteBean"%>
<%@page import="dao.AnuncianteDao"%>
<%@page import="dao.UsuarioDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    
    //Obter dados do usuário
    String nomeLogin = request.getParameter("nomeLogin");
    String senhaLogin = request.getParameter("senhaLogin");
    
    //Validar
    AnuncianteDao ad = new AnuncianteDao();
    int contador = ad.validarLoginAnunciante(nomeLogin, senhaLogin);
    
    //Redirecionamento
    if(contador == 0){
    	
    	 UsuarioDao ud = new UsuarioDao();
    	int contador02 = ud.validarLoginU(nomeLogin, senhaLogin);
    	
    	//Condicional
    	if(contador02 == 0){
    		response.sendRedirect("../login.jsp?msg=Falha");
    	}else{
    		UsuarioBean ub = ud.obterDados(nomeLogin, senhaLogin);
    		session.setAttribute("Usuario",ub);
    		response.sendRedirect("../index.jsp");
    	}
    	
    }else{
    	AnuncianteBean ab = ad.obterDadosF(nomeLogin, senhaLogin);
    	session.setAttribute("Anunciante",ab);
    	response.sendRedirect("../index.jsp");  	
    }
       
    %>
    
    